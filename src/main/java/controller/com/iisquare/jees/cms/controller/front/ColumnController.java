package com.iisquare.jees.cms.controller.front;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iisquare.jees.cms.service.ColumnService;
import com.iisquare.jees.core.component.FrontController;
import com.iisquare.jees.framework.util.DPUtil;

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

	@RequestMapping(value="/column-{id}.shtml")
	public String indexAction(@PathVariable String id) throws Exception {
		Map<String, Object> info = columnService.getById(id, true);
		if(null == info || 1 != DPUtil.parseInt(info.get("status"))) {
			return displayInfo("您要访问的信息不存在或已被删除", webUrl, true);
		}
		assignWeb();
		assign("info", info);
		assign("columnParentList", columnService.getParentList(webUrl, info.get("parent_id"), false, true));
		return displayTemplate();
	}
}
