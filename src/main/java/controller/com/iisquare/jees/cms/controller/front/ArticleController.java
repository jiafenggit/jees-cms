package com.iisquare.jees.cms.controller.front;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iisquare.jees.cms.service.ArticleService;
import com.iisquare.jees.core.component.FrontController;

/**
 * 文章管理
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class ArticleController extends FrontController {
	@Autowired
	public ArticleService articleService;
	
	@RequestMapping(value="/article-{id}.shtml")
	public String indexAction(@PathVariable String id) throws Exception {
		Map<String, Object> info = articleService.getById(id, true);
		if(null == info) return redirect(webUrl);
		assignWeb();
		assign("info", info);
		return displayTemplate();
	}
}
