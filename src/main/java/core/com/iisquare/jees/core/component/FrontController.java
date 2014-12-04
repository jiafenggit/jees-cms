package com.iisquare.jees.core.component;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.iisquare.jees.cms.service.NavigateService;
import com.iisquare.jees.cms.service.SettingService;
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
		assign("navigateList", // 导航菜单
				navigateService.getWebList(webUrl, ServletUtil.getFullUrl(request, false, true)));
	}
	
	/**
	 * 输出提示信息页面
	 */
	protected String displayInfo(String message, String forward, boolean bAssignWeb) throws Exception {
		if(bAssignWeb) assignWeb();
		assign("message", message);
		assign("forward", forward);
		return displayTemplate("public", "info");
	}
}
