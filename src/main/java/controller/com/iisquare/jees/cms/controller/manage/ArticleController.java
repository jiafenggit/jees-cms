package com.iisquare.jees.cms.controller.manage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.iisquare.jees.cms.domain.Article;
import com.iisquare.jees.cms.service.ArticleService;
import com.iisquare.jees.cms.service.ColumnService;
import com.iisquare.jees.core.component.PermitController;
import com.iisquare.jees.core.util.UrlUtil;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ValidateUtil;

/**
 * 文章管理
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class ArticleController extends PermitController {
	@Autowired
	public ArticleService articleService;
	@Autowired
	public ColumnService columnService;
	
	public String layoutAction() throws Exception {
		assign("statusMap", articleService.getStatusMap(false));
		return displayTemplate();
	}
	
	@SuppressWarnings("unchecked")
	public String listAction () throws Exception {
		int page = ValidateUtil.filterInteger(get("page"), true, 0, null, null);
		int pageSize = ValidateUtil.filterInteger(get("rows"), true, 0, 500, null);
		Map<Object, Object> map = articleService.search(parameter, "sort desc", webUrl, page, pageSize);
		List<Map<String, Object>> rows = (List<Map<String, Object>>) map.get("rows");
		for (Map<String, Object> row : rows) {
			row.put("fullUrl", UrlUtil.concat(webUrl, DPUtil.parseString(row.get("url"))));
		}
		assign("total", map.get("total"));
		assign("rows", DPUtil.collectionToArray(rows));
		return displayJSON();
	}
	
	public String listIdsAction () throws Exception {
		List<Map<String, Object>> list = articleService.getListByIds((Object[]) getArray("ids"));
		assign("total", list.size());
		assign("rows", DPUtil.collectionToArray(list));
		return displayJSON();
	}
	
	public String showAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Map<String, Object> info = articleService.getById(id, true);
		if(null == info) {
			return displayInfo("信息不存在，请刷新后再试", null);
		}
		String fullUrl = UrlUtil.concat(webUrl, DPUtil.parseString(info.get("logo")));
		if(DPUtil.empty(fullUrl)) fullUrl = UrlUtil.concat(webUrl, articleService.defaultLogo);
		assign("info", info);
		assign("fullUrl", fullUrl);
		return displayTemplate();
	}
	
	public String editAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Article info;
		if(DPUtil.empty(id)) {
			info = new Article();
			long time = System.currentTimeMillis();
			info.setSort(time);
			info.setPublishTime(time);
		} else {
			info = articleService.getById(id);
			if(DPUtil.empty(info)) return displayInfo("信息不存在，请刷新后再试", null);
		}
		String fullUrl = UrlUtil.concat(webUrl, DPUtil.parseString(info.getLogo()));
		if(DPUtil.empty(fullUrl)) fullUrl = UrlUtil.concat(webUrl, articleService.defaultLogo);
		assign("info", info);
		assign("statusMap", articleService.getStatusMap(false));
		assign("fullUrl", fullUrl);
		assign("sessionId", request.getSession().getId());
		return displayTemplate();
	}
	
	public String saveAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Article persist;
		if(DPUtil.empty(id)) {
			persist = new Article();
			persist.setCountView(0);
			persist.setCountComment(0);
			persist.setCountPartake(0);
		} else {
			persist = articleService.getById(id);
			if(DPUtil.empty(persist)) return displayMessage(3001, "信息不存在，请刷新后再试", null);
		}
		int columnId = ValidateUtil.filterInteger(get("columnId"), true, 0, null, 0);
		if(DPUtil.empty(columnId)) return displayMessage(3003, "请选择所属栏目", null);
		List<Object> columnIdArray = columnService.getIdArrayByRoleId(
				roleService.getIdListByMemberId(currentMember.getId(), null), false, true);
		if(!columnIdArray.contains(columnId)) return displayMessage(403, "权限不足，无该栏目发布权限", null);
		persist.setColumnId(columnId);
		String title = ValidateUtil.filterLength(get("title"), 1, 255, null);
		if(DPUtil.empty(title)) return displayMessage(3002, "标题参数错误", null);
		persist.setTitle(title);
		persist.setUrl(DPUtil.trim(get("url")));
		persist.setKeywords(DPUtil.trim(get("keywords")));
		persist.setDescription(DPUtil.trim(get("description")));
		persist.setFromName(DPUtil.trim(get("fromName")));
		persist.setFromUrl(DPUtil.trim(get("fromUrl")));
		persist.setLogo(DPUtil.trim(get("logo")));
		String content = get("content");
		persist.setContent(content);
		persist.setCommentEnable(ValidateUtil.filterInteger(get("commentEnable"), true, 0, 1, 0));
		persist.setCommentAllow(ValidateUtil.filterInteger(get("commentAllow"), true, 0, 1, 0));
		persist.setIsTop(ValidateUtil.filterInteger(get("isTop"), true, 0, 1, 0));
		persist.setPublishTime(DPUtil.dateTimeToMillis(get("publishTime"), configuration.getDateTimeFormat()));
		persist.setSort(ValidateUtil.filterLong(get("sort"), true, null, null, null));
		String status = get("status");
		if(ValidateUtil.isNull(status, true)) return displayMessage(3003, "请选择记录状态", null);
		persist.setStatus(ValidateUtil.filterInteger(status, true, null, null, null));
		long time = System.currentTimeMillis();
		persist.setUpdateId(currentMember.getId());
		persist.setUpdateTime(time);
		int result;
		if(DPUtil.empty(persist.getId())) {
			persist.setCreateId(currentMember.getId());
			persist.setCreateTime(time);
			result = articleService.insert(persist);
		} else {
			result = articleService.update(persist);
		}
		if(result > 0) {
			return displayMessage(0, "操作成功", null);
		} else {
			return displayMessage(500, "操作失败", null);
		}
	}
	
	public String deleteAction() throws Exception {
		Object[] idArray = getArray("ids");
		int result = articleService.delete(idArray);
		if(result > 0) {
			return displayInfo("操作成功", url("layout"));
		} else {
			return displayInfo("操作失败，请刷新后再试", null);
		}
	}
}
