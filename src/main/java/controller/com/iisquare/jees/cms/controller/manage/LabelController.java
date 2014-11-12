package com.iisquare.jees.cms.controller.manage;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.iisquare.jees.cms.domain.Label;
import com.iisquare.jees.cms.service.LabelService;
import com.iisquare.jees.core.component.PermitController;
import com.iisquare.jees.core.util.UrlUtil;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ValidateUtil;

/**
 * 页面标签管理
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class LabelController extends PermitController {
	@Autowired
	public LabelService labelService;
	
	public String editEffectAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Map<String, Object> info = labelService.getById(id, true);
		if(DPUtil.empty(info)) return displayInfo("信息不存在，请刷新后再试", null);
		String effect = ValidateUtil.filterItem(DPUtil.parseString(info.get("effect")),
				false, DPUtil.collectionToStringArray(labelService.getEffectMap().keySet()), null);
		if(null == effect) return displayInfo("展示效果类型异常，请修改后再试", null);
		assign("info", info);
		if("article".equals(effect)) {
			assign("sortNameMap", labelService.getSortNameMap());
			assign("sortOrderMap", labelService.getSortOrderMap());
		}
		return displayTemplate(DPUtil.stringConcat(_ACTION_, "-", effect));
	}
	
	public String saveEffectAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Label persist = labelService.getById(id);
		if(DPUtil.empty(persist)) return displayMessage(3001, "信息不存在，请刷新后再试");
		String content;
		if("article".equals(persist.getEffect())) {
			content = JSONObject.fromObject(getMap("content")).toString();
		} else {
			content = get("content");
		}
		int result = labelService.updateContent(persist.getId(), content);
		if(result > 0) {
			return displayMessage(0, url("layout"));
		} else {
			return displayMessage(500, "操作失败");
		}
	}
	
	public String layoutAction() throws Exception {
		assign("statusMap", labelService.getStatusMap());
		assign("effectMap", labelService.getEffectMap());
		return displayTemplate();
	}
	
	@SuppressWarnings("unchecked")
	public String listAction () throws Exception {
		int page = ValidateUtil.filterInteger(get("page"), true, 0, null, null);
		int pageSize = ValidateUtil.filterInteger(get("rows"), true, 0, 500, null);
		Map<Object, Object> map = labelService.search(parameterMap, "sort desc", page, pageSize);
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
		Map<String, Object> info = labelService.getById(id, true);
		if(null == info) {
			return displayInfo("信息不存在，请刷新后再试", null);
		}
		assign("info", info);
		return displayTemplate();
	}
	
	public String editAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Label info;
		if(DPUtil.empty(id)) {
			info = new Label();
		} else {
			info = labelService.getById(id);
			if(DPUtil.empty(info)) return displayInfo("信息不存在，请刷新后再试", null);
		}
		assign("info", info);
		assign("statusMap", labelService.getStatusMap());
		assign("effectMap", labelService.getEffectMap());
		return displayTemplate();
	}
	
	public String saveAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Label persist;
		if(DPUtil.empty(id)) {
			persist = new Label();
		} else {
			persist = labelService.getById(id);
			if(DPUtil.empty(persist)) return displayMessage(3001, "信息不存在，请刷新后再试");
		}
		String name = ValidateUtil.filterSimpleString(get("name"), true, 1, 64, null);
		if(DPUtil.empty(name)) return displayMessage(3002, "名称参数错误");
		persist.setName(name);
		String module = ValidateUtil.filterSimpleString(get("module"), true, 0, 64, null);
		if(null == module) return displayMessage(3002, "模块参数错误");
		persist.setModule(module);
		String controller = ValidateUtil.filterSimpleString(get("controller"), true, 0, 64, null);
		if(null == controller) return displayMessage(3002, "控制器参数错误");
		persist.setController(controller);
		String action = ValidateUtil.filterSimpleString(get("action"), true, 0, 64, null);
		if(null == action) return displayMessage(3002, "方法参数错误");
		persist.setAction(action);
		String keyGroup = ValidateUtil.filterSimpleString(get("keyGroup"), true, 0, 64, null);
		if(null == keyGroup) return displayMessage(3002, "标签组参数错误");
		persist.setKeyGroup(keyGroup);
		String keyName = ValidateUtil.filterSimpleString(get("keyName"), true, 1, 64, null);
		if(DPUtil.empty(keyName)) return displayMessage(3002, "标签名称参数错误");
		persist.setKeyName(keyName);
		if(!DPUtil.empty(labelService.getContentMap(_MODULE_, _CONTROLLER_, _ACTION_, null, keyName, false, false))) {
			return displayMessage(3006, "对应标签已存在");
		}
		String effect = ValidateUtil.filterItem(get("effect"), false,
				DPUtil.collectionToStringArray(labelService.getEffectMap().keySet()), null);
		if(null == effect) return displayMessage(3002, "展示效果参数错误");
		persist.setEffect(effect);
		persist.setRemark(get("remark"));
		persist.setSort(ValidateUtil.filterInteger(get("sort"), true, null, null, null));
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
			result = labelService.insert(persist);
		} else {
			result = labelService.update(persist);
		}
		if(result > 0) {
			return displayMessage(0, url("layout"));
		} else {
			return displayMessage(500, "操作失败");
		}
	}
	
	public String deleteAction() throws Exception {
		Object[] idArray = DPUtil.explode(get("ids"), ",", " ", true);
		int result = labelService.delete(idArray);
		if(result > 0) {
			return displayInfo("操作成功", url("layout"));
		} else {
			return displayInfo("操作失败，请刷新后再试", null);
		}
	}
}
