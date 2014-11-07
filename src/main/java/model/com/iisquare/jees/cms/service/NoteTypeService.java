package com.iisquare.jees.cms.service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iisquare.jees.cms.dao.MemberDao;
import com.iisquare.jees.cms.dao.NoteDao;
import com.iisquare.jees.cms.dao.NoteTypeDao;
import com.iisquare.jees.cms.domain.NoteType;
import com.iisquare.jees.framework.model.ServiceBase;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServiceUtil;
import com.iisquare.jees.framework.util.SqlUtil;

@Service
public class NoteTypeService extends ServiceBase {
	
	@Autowired
	public MemberDao memberDao;
	@Autowired
	public NoteTypeDao noteTypeDao;
	@Autowired
	public NoteDao noteDao;
	
	public Map<String, String> getStatusMap() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("0", "禁用");
		map.put("1", "正常");
		return map;
	}
	
	public NoteTypeService() {}
	
	public List<Map<String, Object>> getList(String columns, String orderBy, int page, int pageSize) {
		String append = null;
		if(!DPUtil.empty(orderBy)) append = DPUtil.stringConcat(" order by ", orderBy);
		List<Map<String, Object>> list = noteTypeDao.getList(columns, null, new Object[]{}, append, page, pageSize);
		list = ServiceUtil.fillFields(list, new String[]{"status"}, new Map<?, ?>[]{getStatusMap()}, null);
		list = ServiceUtil.fillRelations(list, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		return list;
	}
	
	public NoteType getById(Object id) {
		return noteTypeDao.getById(id);
	}
	
	public Map<String, Object> getById(Object id, boolean bFill) {
		Map<String, Object> map = noteTypeDao.getById("*", id);
		if(null != map && bFill) {
			map = ServiceUtil.fillFields(map, new String[]{"status"}, new Map<?, ?>[]{getStatusMap()}, null);
			map = ServiceUtil.fillRelations(map, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		}
		return map;
	}
	
	public int insert(NoteType persist) {
		return noteTypeDao.insert(persist);
	}
	
	public int update(NoteType persist) {
		return noteTypeDao.update(persist);
	}
	
	public int delete(Object... ids) {
		String idStr = SqlUtil.buildSafeWhere(",", ids);
		if(DPUtil.empty(idStr)) return 0;
		int count = noteTypeDao.getCount(DPUtil.stringConcat("parent_id in (", idStr, " )"), new Object[]{}, null);
		if(count > 0) return -1;
		count = noteDao.getCount(DPUtil.stringConcat("type_id in (", idStr, " )"), new Object[]{}, null);
		if(count > 0) return -2;
		return noteTypeDao.deleteByIds(ids);
	}
}
