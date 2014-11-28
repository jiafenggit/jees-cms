package com.iisquare.jees.cms.controller.manage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.iisquare.jees.cms.domain.Note;
import com.iisquare.jees.cms.service.NoteService;
import com.iisquare.jees.core.component.PermitController;
import com.iisquare.jees.core.util.UrlUtil;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServletUtil;
import com.iisquare.jees.framework.util.ValidateUtil;

/**
 * 在线留言管理
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class NoteController extends PermitController {
	@Autowired
	public NoteService noteService;
	
	public String layoutAction() throws Exception {
		return displayTemplate();
	}
	
	@SuppressWarnings("unchecked")
	public String listAction () throws Exception {
		int page = ValidateUtil.filterInteger(get("page"), true, 0, null, null);
		int pageSize = ValidateUtil.filterInteger(get("rows"), true, 0, 500, null);
		Map<Object, Object> map = noteService.search(parameter, "sort desc", page, pageSize);
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
		Map<String, Object> info = noteService.getById(id, true);
		if(null == info) {
			return displayInfo("信息不存在，请刷新后再试", null);
		}
		assign("info", info);
		return displayTemplate();
	}
	
	public String editAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Note info;
		if(DPUtil.empty(id)) {
			info = new Note();
		} else {
			info = noteService.getById(id);
			if(DPUtil.empty(info)) return displayInfo("信息不存在，请刷新后再试", null);
		}
		assign("info", info);
		assign("statusMap", noteService.getStatusMap(false));
		return displayTemplate();
	}
	
	public String saveAction() throws Exception {
		Integer id = ValidateUtil.filterInteger(get("id"), true, 0, null, null);
		Note persist;
		if(DPUtil.empty(id)) {
			persist = new Note();
		} else {
			persist = noteService.getById(id);
			if(DPUtil.empty(persist)) return displayMessage(3001, "信息不存在，请刷新后再试", null);
		}
		String typeId = get("typeId");
		if(ValidateUtil.isNull(typeId, true)) return displayMessage(3003, "请选择所属类型", null);
		persist.setTypeId(ValidateUtil.filterInteger(typeId, true, 1, null, 0));
		String nickname = ValidateUtil.filterSimpleString(get("nickname"), true, 0, 32, null);
		if(null == nickname) return displayMessage(3002, "称呼项字数太多或含有特殊字符，请在内容处填写", null);
		persist.setNickname(nickname);
		String contact = ValidateUtil.filterSimpleString(get("contact"), true, 0, 255, null);
		if(null == contact) return displayMessage(3002, "联系方式项字数太多或含有特殊字符，请在内容处填写", null);
		persist.setContact(contact);
		if(DPUtil.empty(id)) persist.setIp(ServletUtil.getRemoteAddr(request)); // 创建者IP
		String content = get("content");
		if(content.length() < 20) return displayMessage(3002, "您输入的内容太少了，请详细描述", null);
		persist.setContent(content);
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
			result = noteService.insert(persist);
		} else {
			result = noteService.update(persist);
		}
		if(result > 0) {
			return displayMessage(0, "操作成功", null);
		} else {
			return displayMessage(500, "操作失败", null);
		}
	}
	
	public String deleteAction() throws Exception {
		Object[] idArray = getArray("ids");
		int result = noteService.delete(idArray);
		if(result > 0) {
			return displayInfo("操作成功", url("layout"));
		} else {
			return displayInfo("操作失败，请刷新后再试", null);
		}
	}
}
