package com.iisquare.jees.cms.controller.manage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.iisquare.jees.cms.domain.Partner;
import com.iisquare.jees.cms.service.PartnerService;
import com.iisquare.jees.core.component.PermitController;
import com.iisquare.jees.core.util.UrlUtil;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ValidateUtil;

/**
 * 友情链接管理
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class PartnerController extends PermitController {
	@Autowired
	public PartnerService partnerService;
	
	public String layoutAction() throws Exception {
		assign("statusMap", partnerService.getStatusMap(false));
		assign("goalMap", partnerService.getGoalMap());
		return displayTemplate();
	}
	
	@SuppressWarnings("unchecked")
	public String listAction () throws Exception {
		int page = ValidateUtil.filterInteger(get("page"), true, 0, null, null);
		int pageSize = ValidateUtil.filterInteger(get("rows"), true, 0, 500, null);
		Map<Object, Object> map = partnerService.search(parameter, "sort desc", page, pageSize);
		List<Map<String, Object>> rows = (List<Map<String, Object>>) map.get("rows");
		for (Map<String, Object> row : rows) {
			row.put("fullUrl", UrlUtil.concat(webUrl, DPUtil.parseString(row.get("url"))));
		}
		assign("total", map.get("total"));
		assign("rows", DPUtil.collectionToArray(rows));
		return displayJSON();
	}
	
	public String showAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Map<String, Object> info = partnerService.getById(id, true);
		if(null == info) {
			return displayInfo("信息不存在，请刷新后再试", null);
		}
		String fullUrl = UrlUtil.concat(webUrl, DPUtil.parseString(info.get("logo")));
		if(DPUtil.empty(fullUrl)) fullUrl = UrlUtil.concat(webUrl, partnerService.defaultLogo);
		assign("info", info);
		assign("fullUrl", fullUrl);
		return displayTemplate();
	}
	
	public String editAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Partner info;
		if(DPUtil.empty(id)) {
			info = new Partner();
		} else {
			info = partnerService.getById(id);
			if(DPUtil.empty(info)) return displayInfo("信息不存在，请刷新后再试", null);
		}
		String fullUrl = UrlUtil.concat(webUrl, DPUtil.parseString(info.getLogo()));
		if(DPUtil.empty(fullUrl)) fullUrl = UrlUtil.concat(webUrl, partnerService.defaultLogo);
		assign("info", info);
		assign("statusMap", partnerService.getStatusMap(false));
		assign("goalMap", partnerService.getGoalMap());
		assign("fullUrl", fullUrl);
		assign("sessionId", request.getSession().getId());
		return displayTemplate();
	}
	
	public String saveAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Partner persist;
		if(DPUtil.empty(id)) {
			persist = new Partner();
		} else {
			persist = partnerService.getById(id);
			if(DPUtil.empty(persist)) return displayMessage(3001, "信息不存在，请刷新后再试", null);
		}
		String name = ValidateUtil.filterSimpleString(get("name"), true, 1, 64, null);
		if(DPUtil.empty(name)) return displayMessage(3002, "名称参数错误", null);
		persist.setName(name);
		int typeId = ValidateUtil.filterInteger(get("typeId"), true, 0, null, 0);
		if(DPUtil.empty(typeId)) return displayMessage(3003, "请选择所属类型", null);
		persist.setTypeId(typeId);
		String goal = ValidateUtil.filterItem(get("goal"), false,
				DPUtil.collectionToStringArray(partnerService.getGoalMap().keySet()), null);
		if(null == goal) return displayMessage(3002, "打开方式参数错误", null);
		persist.setGoal(goal);
		persist.setUrl(DPUtil.trim(get("url")));
		persist.setDescription(DPUtil.trim(get("description")));
		persist.setLogo(DPUtil.trim(get("logo")));
		String remark = get("remark");
		persist.setRemark(remark);
		persist.setSort(ValidateUtil.filterInteger(get("sort"), true, null, null, null));
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
			result = partnerService.insert(persist);
		} else {
			result = partnerService.update(persist);
		}
		if(result > 0) {
			return displayMessage(0, "操作成功", null);
		} else {
			return displayMessage(500, "操作失败", null);
		}
	}
	
	public String deleteAction() throws Exception {
		Object[] idArray = getArray("ids");
		int result = partnerService.delete(idArray);
		if(result > 0) {
			return displayInfo("操作成功", url("layout"));
		} else {
			return displayInfo("操作失败，请刷新后再试", null);
		}
	}
}
