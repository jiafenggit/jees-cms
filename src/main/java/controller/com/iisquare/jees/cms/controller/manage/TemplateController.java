package com.iisquare.jees.cms.controller.manage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.iisquare.jees.cms.service.TemplateService;
import com.iisquare.jees.core.component.PermitController;
import com.iisquare.jees.framework.util.DPUtil;

/**
 * 模板文件管理
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class TemplateController extends PermitController {
	
	@Autowired
	public TemplateService templateService;
	
	private String getTemplateLoaderPath() {
		return DPUtil.stringConcat(_WEB_ROOT_, "/", DPUtil.trim(configuration.getTemplateLoaderPath(), "/"));
	}
	
	public String layoutAction() throws Exception {
		return displayTemplate();
	}
	
	public String listAction () throws Exception {
		List<Map<String, Object>> list = templateService.listFiles(getTemplateLoaderPath(), get("path"));
		assign("total", list.size());
		assign("rows", DPUtil.collectionToArray(list));
		return displayJSON();
	}
	
	public String editAction() throws Exception {
		return displayTemplate();
	}
	
	public String saveAction() throws Exception {
		return null;
	}
}
