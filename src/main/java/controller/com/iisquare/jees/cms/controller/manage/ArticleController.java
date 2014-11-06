package com.iisquare.jees.cms.controller.manage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.iisquare.jees.cms.domain.Article;
import com.iisquare.jees.cms.service.ArticleService;
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
	
	public String layoutAction() throws Exception {
		assign("statusMap", articleService.getStatusMap(false));
		assign("goalMap", articleService.getGoalMap());
		return displayTemplate();
	}
	
	@SuppressWarnings("unchecked")
	public String listAction () throws Exception {
		int page = ValidateUtil.filterInteger(get("page"), true, 0, null, null);
		int pageSize = ValidateUtil.filterInteger(get("rows"), true, 0, 500, null);
		Map<Object, Object> map = articleService.search(parameterMap, "sort desc", page, pageSize);
		List<Map<String, Object>> rows = (List<Map<String, Object>>) map.get("rows");
		for (Map<String, Object> row : rows) {
			row.put("fullUrl", UrlUtil.concat(_WEB_URL_, DPUtil.parseString(row.get("url"))));
		}
		assign("total", map.get("total"));
		assign("rows", DPUtil.collectionToArray(rows));
		return displayJSON();
	}
	
	public String showAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Map<String, Object> info = articleService.getById(id, true);
		if(null == info) {
			return displayInfo("信息不存在，请刷新后再试", null);
		}
		String fullUrl = UrlUtil.concat(_WEB_URL_, DPUtil.parseString(info.get("picture_url")));
		if(DPUtil.empty(fullUrl)) fullUrl = UrlUtil.concat(_WEB_URL_, articleService.defaultPictureUrl);
		assign("info", info);
		assign("fullUrl", fullUrl);
		return displayTemplate();
	}
	
	public String editAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Article info;
		if(DPUtil.empty(id)) {
			info = new Article();
			info.setSort(System.currentTimeMillis());
		} else {
			info = articleService.getById(id);
			if(DPUtil.empty(info)) return displayInfo("信息不存在，请刷新后再试", null);
		}
		String fullUrl = UrlUtil.concat(_WEB_URL_, DPUtil.parseString(info.getPictureUrl()));
		if(DPUtil.empty(fullUrl)) fullUrl = UrlUtil.concat(_WEB_URL_, articleService.defaultPictureUrl);
		assign("info", info);
		assign("statusMap", articleService.getStatusMap(false));
		assign("goalMap", articleService.getGoalMap());
		assign("fullUrl", fullUrl);
		assign("sessionId", request.getSession().getId());
		return displayTemplate();
	}
	
	public String saveAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Article persist;
		if(DPUtil.empty(id)) {
			persist = new Article();
		} else {
			persist = articleService.getById(id);
			if(DPUtil.empty(persist)) return displayMessage(3001, "信息不存在，请刷新后再试");
		}
		String columnId = get("columnId");
		if(ValidateUtil.isNull(columnId, true)) return displayMessage(3003, "请选择所属栏目");
		persist.setColumnId(ValidateUtil.filterInteger(columnId, true, 1, null, 0));
		String title = ValidateUtil.filterSimpleString(get("title"), true, 1, 64, null);
		if(DPUtil.empty(title)) return displayMessage(3002, "标题参数错误");
		persist.setTitle(title);
		String goal = ValidateUtil.filterItem(get("goal"), false,
				DPUtil.collectionToStringArray(articleService.getGoalMap().keySet()), null);
		if(null == goal) return displayMessage(3002, "打开方式参数错误");
		persist.setGoal(goal);
		String url = DPUtil.trim(get("url"));
		persist.setUrl(url);
		persist.setKeywords(get("keywords"));
		persist.setDescription(get("description"));
		persist.setPictureUrl(get("pictureUrl"));
		String content = get("content");
		persist.setContent(content);
		persist.setSort(ValidateUtil.filterLong(get("sort"), true, null, null, null));
		String status = get("status");
		if(ValidateUtil.isNull(status, true)) return displayMessage(3003, "请选择记录状态");
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
			return displayMessage(0, url("layout"));
		} else {
			return displayMessage(500, "操作失败");
		}
	}
	
	public String deleteAction() throws Exception {
		Object[] idArray = DPUtil.explode(get("ids"), ",", " ", true);
		int result = articleService.delete(idArray);
		if(result > 0) {
			return displayInfo("操作成功", url("layout"));
		} else {
			return displayInfo("操作失败，请刷新后再试", null);
		}
	}
}
