package com.iisquare.jees.cms.controller.front;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iisquare.jees.cms.service.ArticleService;
import com.iisquare.jees.cms.service.LabelService;
import com.iisquare.jees.cms.service.PartnerService;
import com.iisquare.jees.core.component.FrontController;

/**
 * 前台首页控制器
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class IndexController extends FrontController {
	
	@Autowired
	public LabelService labelService;
	@Autowired
	public ArticleService articleService;
	@Autowired
	public PartnerService partnerService;
	
	@RequestMapping(value="/")
	public String indexAction() throws Exception {
		assignWeb();
		assign("defaultArticleLogo", articleService.defaultLogo);
		assign("defaultPartnerLogo", partnerService.defaultLogo);
		assign("label", labelService.getContentMap(this, null, null, true, true));
		assign("partnerList", partnerService.getWebList());
		return displayTemplate();
	}
}
