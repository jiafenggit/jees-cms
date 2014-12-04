package com.iisquare.jees.cms.controller.front;

import java.util.HashMap;
import java.util.List;
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
import com.iisquare.jees.framework.util.ServletUtil;

/**
 * 栏目管理
 * @author Ouyang <iisquare@163.com>
 *
 */
@Controller
@Scope("prototype")
public class ColumnController extends FrontController {
	
	@Autowired
	public ColumnService columnService;
	@Autowired
	public ArticleService articleService;

	@RequestMapping(value="/column-{pathId}-{pathPage}.shtml")
	public String indexAction(@PathVariable String pathId, @PathVariable String pathPage) throws Exception {
		/* 参数处理 */
		Integer id = DPUtil.parseInt(pathId);
		int page = DPUtil.parseInt(pathPage);
		if(page < 1) page = 1; // 默认第一页
		int pageSize = DPUtil.parseInt(settingService.get("web", "columnListPageSize"));
		if(pageSize < 1) pageSize = 15; // 默认15条
		/* 基础信息处理 */
		Map<String, Object> info = columnService.getById(id, true);
		if(null == info || 1 != DPUtil.parseInt(info.get("status"))) {
			return displayInfo("您要访问的信息不存在或已被删除", webUrl, true);
		}
		Integer parentId = DPUtil.parseInt(info.get("parent_id"));
		List<Map<String, Object>> list = columnService.getList(null, "*", "sort desc", 0, 0);
		/* 文章列表处理 */
		Map<String, Object> articleParam = new HashMap<String, Object>();
		articleParam.put("columnIds", new Object[]{id});
		String orderBy = "is_top desc, sort desc";
		Map<Object, Object> articleMap = articleService.search(articleParam, orderBy, webUrl, page, pageSize);
		articleMap.put("page", page);
		articleMap.put("pageSize", pageSize);
		/* 模板参数赋值 */
		assignWeb();
		assign("info", info);
		assign("webFullUrl", ServletUtil.getFullUrl(request, true, true));
		assign("defaultArticleLogo", articleService.defaultLogo);
		assign("columnParentList", // 父级栏目，路径导航
				columnService.getParentList(list, webUrl, parentId, false, true));
		assign("columnChildrenList", // 子栏目列表
				columnService.getChildrenList(list, id, null, false));
		assign("columnSiblingList", // 同级栏目列表
				columnService.getChildrenList(list, parentId, new Object[]{id}, false));
		assign("articleMap", articleMap);
		return displayTemplate();
	}
}
