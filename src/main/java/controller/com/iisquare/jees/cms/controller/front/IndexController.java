package com.iisquare.jees.cms.controller.front;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iisquare.jees.core.component.PermitController;

/**
 * 前台首页控制器
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class IndexController extends PermitController {
	
	@RequestMapping(value="/")
	public String indexAction() throws Exception {
		assign("title", settingService.get("web", "title")); // 网站标题
		assign("keywords", settingService.get("web", "keywords")); // 网站关键词
		assign("description", settingService.get("web", "description")); // 网站描述
		return displayTemplate();
	}
	
}
