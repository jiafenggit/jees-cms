package com.iisquare.jees.core.component;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.iisquare.jees.cms.service.NavigateService;
import com.iisquare.jees.cms.service.SettingService;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServletUtil;

@Controller
@Scope("prototype")
public abstract class FrontController extends CoreController {

	@Autowired
	public SettingService settingService;
	@Autowired
	public NavigateService navigateService;
	
	/**
	 * 填充前台页面公共变量
	 */
	protected void assignWeb() {
		assign("title", settingService.get("web", "title")); // 网站标题
		assign("keywords", settingService.get("web", "keywords")); // 网站关键词
		assign("description", settingService.get("web", "description")); // 网站描述
		assign("navigateList", navigateService.getWebList(webUrl, DPUtil.subString(
				ServletUtil.getFullUrl(request, isWebUrlWithDomain), webUrl.length()))); // 导航菜单
	}
	
	/**
	 * 输出提示信息页面
	 */
	protected String displayInfo(String message, String forward) throws Exception {
		assign("message", message);
		assign("url", forward);
		return displayTemplate("public", "info");
	}
}
