package com.iisquare.jees.cms.controller.manage;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.iisquare.jees.core.component.PermitController;
import com.iisquare.jees.framework.util.DPUtil;

/**
 * 后台首页控制器
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class IndexController extends PermitController {

	public String editSettingAction() throws Exception {
		assign("title", settingService.get("web", "title")); // 网站标题
		assign("keywords", settingService.get("web", "keywords")); // 网站关键词
		assign("description", settingService.get("web", "description")); // 网站描述
		assign("loginEnable", settingService.get("web", "loginEnable")); // 是否开启登陆
		assign("registerEnable", settingService.get("web", "registerEnable")); // 是否开启注册
		assign("noteEnable", settingService.get("web", "noteEnable")); // 是否开启在线留言
		assign("commentEnable", settingService.get("web", "commentEnable")); // 是否开启文章评论（全局）
		assign("feedbackEnable", settingService.get("web", "feedbackEnable")); // 是否开启文章投诉举报
		assign("partnerEnable", settingService.get("web", "partnerEnable")); // 是否开启友情链接申请
		return displayTemplate();
	}
	
	public String saveSettingAction() throws Exception {
		settingService.set("web", "title", DPUtil.trim(get("title")), null, this, currentMember);
		settingService.set("web", "keywords", DPUtil.trim(get("keywords")), null, this, currentMember);
		settingService.set("web", "description", DPUtil.trim(get("description")), null, this, currentMember);
		settingService.set("web", "loginEnable", DPUtil.empty(get("loginEnable")) ? "0" : "1", null, this, currentMember);
		settingService.set("web", "registerEnable", DPUtil.empty(get("registerEnable")) ? "0" : "1", null, this, currentMember);
		settingService.set("web", "noteEnable", DPUtil.empty(get("noteEnable")) ? "0" : "1", null, this, currentMember);
		settingService.set("web", "commentEnable", DPUtil.empty(get("commentEnable")) ? "0" : "1", null, this, currentMember);
		settingService.set("web", "feedbackEnable", DPUtil.empty(get("feedbackEnable")) ? "0" : "1", null, this, currentMember);
		settingService.set("web", "partnerEnable", DPUtil.empty(get("partnerEnable")) ? "0" : "1", null, this, currentMember);
		return displayMessage(0, "修改成功");
	}
}
