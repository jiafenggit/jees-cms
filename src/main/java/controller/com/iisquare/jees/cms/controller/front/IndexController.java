package com.iisquare.jees.cms.controller.front;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iisquare.jees.cms.service.NavigateService;
import com.iisquare.jees.core.component.PermitController;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServletUtil;

/**
 * 前台首页控制器
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class IndexController extends PermitController {
	
	@Autowired
	public NavigateService navigateService;
	
	@RequestMapping(value="/")
	public String indexAction() throws Exception {
		assignWeb();
		return displayTemplate();
	}
	
	private void assignWeb() {
		assign("title", settingService.get("web", "title")); // 网站标题
		assign("keywords", settingService.get("web", "keywords")); // 网站关键词
		assign("description", settingService.get("web", "description")); // 网站描述
		assign("navigateList", navigateService.getWebList(_WEB_URL_,
				DPUtil.subString(ServletUtil.getFullUrl(request), _WEB_URL_.length()))); // 导航菜单
	}
}
