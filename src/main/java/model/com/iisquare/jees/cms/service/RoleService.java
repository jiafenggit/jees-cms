package com.iisquare.jees.cms.service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iisquare.jees.cms.dao.MemberDao;
import com.iisquare.jees.cms.dao.RoleColumnRelDao;
import com.iisquare.jees.cms.dao.RoleDao;
import com.iisquare.jees.cms.dao.RoleMenuRelDao;
import com.iisquare.jees.cms.dao.RoleResourceRelDao;
import com.iisquare.jees.cms.domain.Role;
import com.iisquare.jees.cms.domain.RoleColumnRel;
import com.iisquare.jees.cms.domain.RoleMenuRel;
import com.iisquare.jees.cms.domain.RoleResourceRel;
import com.iisquare.jees.framework.model.ServiceBase;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServiceUtil;
import com.iisquare.jees.framework.util.SqlUtil;
import com.iisquare.jees.framework.util.ValidateUtil;

@Service
public class RoleService extends ServiceBase {
	
	@Autowired
	public RoleDao roleDao;
	@Autowired
	public RoleResourceRelDao roleResourceRelDao;
	@Autowired
	public RoleMenuRelDao roleMenuRelDao;
	@Autowired
	public RoleColumnRelDao roleColumnRelDao;
	@Autowired
	public MemberDao memberDao;
	
	public Map<String, String> getStatusMap() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("0", "禁用");
		map.put("1", "正常");
		return map;
	}
	
	public RoleService() {}
	
	public List<Map<String, Object>> getList(String columns, String orderBy, int page, int pageSize) {
		String append = null;
		if(!DPUtil.empty(orderBy)) append = DPUtil.stringConcat(" order by ", orderBy);
		List<Map<String, Object>> list = roleDao.getList(columns, null, new Object[]{}, append, page, pageSize);
		list = ServiceUtil.fillFields(list, new String[]{"status"}, new Map<?, ?>[]{getStatusMap()}, null);
		list = ServiceUtil.fillRelations(list, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		return list;
	}
	
	public Role getById(Object id) {
		return roleDao.getById(id);
	}
	
	public Map<String, Object> getById(Object id, boolean bFill) {
		Map<String, Object> map = roleDao.getById("*", id);
		if(null != map && bFill) {
			map = ServiceUtil.fillFields(map, new String[]{"status"}, new Map<?, ?>[]{getStatusMap()}, null);
			map = ServiceUtil.fillRelations(map, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		}
		return map;
	}
	
	public int insert(Role persist) {
		return roleDao.insert(persist);
	}
	
	public int update(Role persist) {
		return roleDao.update(persist);
	}
	
	public int delete(Object... ids) {
		String idStr = SqlUtil.buildSafeWhere(",", ids);
		if(DPUtil.empty(idStr)) return 0;
		int count = roleDao.getCount(DPUtil.stringConcat("parent_id in (", idStr, " )"), new Object[]{}, null);
		if(count > 0) return -1;
		count = memberDao.getCount(DPUtil.stringConcat("role_id in (", idStr, " )"), new Object[]{}, null);
		if(count > 0) return -2;
		return roleDao.deleteByIds(ids);
	}
	
	public List<Map<String, Object>> getResourceRelList(Object roleId) {
		return roleResourceRelDao.getList("*", new String[]{"role_id"}, new Object[]{roleId}, null, null, 0, 0);
	}
	
	public List<Map<String, Object>> getMenuRelList(Object roleId) {
		return roleMenuRelDao.getList("*", new String[]{"role_id"}, new Object[]{roleId}, null, null, 0, 0);
	}
	
	public boolean updatePower(Object id, Object[] resourceIds, Object[] menuIds) {
		Role persist = getById(id);
		if(null == persist) return false;
		Integer roleId = persist.getId();
		if(null != resourceIds) {
			roleResourceRelDao.delete(new String[]{"role_id"}, new Object[]{roleId}, null);
			for (Object object : resourceIds) {
				Integer resourceId = ValidateUtil.filterInteger(DPUtil.parseString(object), false, 1, null, null);
				if(null == resourceId) continue ;
				RoleResourceRel roleResourceRel = new RoleResourceRel();
				roleResourceRel.setRoleId(roleId);
				roleResourceRel.setResourceId(resourceId);
				roleResourceRelDao.insert(roleResourceRel);
			}
		}
		if(null != menuIds) {
			roleMenuRelDao.delete(new String[]{"role_id"}, new Object[]{roleId}, null);
			for (Object object : menuIds) {
				Integer menuId = ValidateUtil.filterInteger(DPUtil.parseString(object), false, 1, null, null);
				if(null == menuId) continue ;
				RoleMenuRel roleMenuRel = new RoleMenuRel();
				roleMenuRel.setRoleId(roleId);
				roleMenuRel.setMenuId(menuId);
				roleMenuRelDao.insert(roleMenuRel);
			}
		}
		return true;
	}
	
	public int saveColumnPower(RoleColumnRel persist) {
		if(DPUtil.empty(persist.getRoleId()) || DPUtil.empty(persist.getColumnId())) return 0;
		RoleColumnRel info = roleColumnRelDao.getByFields(new String[]{"role_id", "column_id"},
				new Object[]{persist.getRoleId(), persist.getColumnId()}, null, null);
		if(null == info) {
			return roleColumnRelDao.insert(persist);
		} else {
			persist.setId(info.getId());
			return roleColumnRelDao.update(persist);
		}
	}
}
