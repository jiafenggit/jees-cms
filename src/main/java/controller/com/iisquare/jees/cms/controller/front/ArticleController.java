package com.iisquare.jees.cms.controller.front;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iisquare.jees.cms.service.ArticleService;
import com.iisquare.jees.cms.service.ColumnService;
import com.iisquare.jees.core.component.FrontController;
import com.iisquare.jees.framework.util.DPUtil;

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
	@Autowired
	public ColumnService columnService;
	
	@RequestMapping(value="/article-{pathColumnId}-{pathId}-{pathPage}.shtml")
	public String indexAction(@PathVariable("pathColumnId") String pathColumnId,
			@PathVariable("pathId") String pathId, @PathVariable("pathPage") String pathPage) throws Exception {
		/* 参数处理 */
		Integer id = DPUtil.parseInt(pathId);
		/* 基础信息处理 */
		Map<String, Object> info = articleService.getById(id, true);
		if(null == info || 1 != DPUtil.parseInt(info.get("status"))) {
			return displayInfo("您要访问的信息不存在或已被删除", webUrl, true);
		}
		Integer columnId = DPUtil.parseInt(info.get("column_id"));
		/* 推荐文章 */
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("exceptIds", new Object[]{id});
		param.put("columnIds", new Object[]{columnId});
		String orderBy = "count_partake desc, sort desc";
		Map<Object, Object> recommendMap = articleService.search(param, orderBy, webUrl, 1, 8);
		/* 模板参数 */
		assignWeb();
		assign("info", info);
		assign("columnParentList", // 栏目路径导航
				columnService.getParentList(null, webUrl, columnId, false, true));
		assign("recommendList", recommendMap.get("rows"));
		return displayTemplate();
	}
}
