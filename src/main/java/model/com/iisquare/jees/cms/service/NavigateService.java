package com.iisquare.jees.cms.service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iisquare.jees.cms.dao.MemberDao;
import com.iisquare.jees.cms.dao.NavigateDao;
import com.iisquare.jees.cms.domain.Navigate;
import com.iisquare.jees.framework.model.ServiceBase;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServiceUtil;
import com.iisquare.jees.framework.util.SqlUtil;

@Service
public class NavigateService extends ServiceBase {
	
	@Autowired
	public NavigateDao navigateDao;
	@Autowired
	public MemberDao memberDao;
	
	public Map<String, String> getStatusMap() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("0", "禁用");
		map.put("1", "正常");
		return map;
	}
	
	public Map<String, String> getGoalMap() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("_blank", "新窗口打开");
		map.put("_self", "当前页打开");
		return map;
	}
	
	public NavigateService() {}
	
	public List<Map<String, Object>> getList(String columns, String orderBy, int page, int pageSize) {
		String append = null;
		if(!DPUtil.empty(orderBy)) append = DPUtil.stringConcat(" order by ", orderBy);
		List<Map<String, Object>> list;
		list = navigateDao.getList(columns, null, new Object[]{}, append, page, pageSize);
		list = ServiceUtil.fillFields(list, new String[]{"status", "goal"}, new Map<?, ?>[]{getStatusMap(), getGoalMap()}, null);
		list = ServiceUtil.fillRelations(list, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		return list;
	}
	
	public Map<String, Object> getById(Object id, boolean bFill) {
		Map<String, Object> map = navigateDao.getById("*", id);
		if(null != map && bFill) {
			map = ServiceUtil.fillFields(map, new String[]{"status", "goal"}, new Map<?, ?>[]{getStatusMap(), getGoalMap()}, null);
			map = ServiceUtil.fillRelations(map, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		}
		return map;
	}
	
	public Navigate getById(Object id) {
		return navigateDao.getById(id);
	}
	
	public int insert(Navigate persist) {
		return navigateDao.insert(persist);
	}
	
	public int update(Navigate persist) {
		return navigateDao.update(persist);
	}
	
	public int delete(Object... ids) {
		String idStr = SqlUtil.buildSafeWhere(",", ids);
		if(DPUtil.empty(idStr)) return 0;
		int count = navigateDao.getCount(DPUtil.stringConcat("parent_id in (", idStr, " )"), new Object[]{}, null);
		if(count > 0) return -1;
		return navigateDao.deleteByIds(ids);
	}
}
