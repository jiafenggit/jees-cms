package com.iisquare.jees.cms.service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iisquare.jees.cms.dao.MemberDao;
import com.iisquare.jees.cms.dao.NoteDao;
import com.iisquare.jees.cms.dao.NoteTypeDao;
import com.iisquare.jees.cms.domain.Note;
import com.iisquare.jees.framework.model.ServiceBase;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServiceUtil;
import com.iisquare.jees.framework.util.SqlUtil;
import com.iisquare.jees.framework.util.ValidateUtil;

@Service
public class NoteService extends ServiceBase {
	
	@Autowired
	public MemberDao memberDao;
	@Autowired
	public NoteDao noteDao;
	@Autowired
	public NoteTypeDao noteTypeDao;
	
	public Map<String, String> getStatusMap(boolean bAll) {
		Map<String, String> map = new LinkedHashMap<String, String>();
		if(bAll) {
			map.put("-1", "已删除");
		}
		map.put("0", "未处理");
		map.put("1", "已处理");
		map.put("2", "忽略");
		return map;
	}
	
	public NoteService() {}
	
	public Map<Object, Object> search(Map<String, Object> map, String orderBy, int page, int pageSize) {
		StringBuilder sb = new StringBuilder("select * from ")
			.append(noteDao.tableName()).append(" where 1 = 1");
		Map<String, Object> paramMap = new HashMap<String, Object>();
		Object nickname = map.get("nickname");
		if(!DPUtil.empty(nickname)) {
			sb.append(" and nickname like :nickname");
			paramMap.put("nickname", DPUtil.stringConcat("%", nickname, "%"));
		}
		Object contact = map.get("contact");
		if(!DPUtil.empty(contact)) {
			sb.append(" and contact like :contact");
			paramMap.put("contact", DPUtil.stringConcat("%", contact, "%"));
		}
		int typeId = ValidateUtil.filterInteger(DPUtil.parseString(map.get("typeId")), true, 0, null, 0);
		if(!DPUtil.empty(typeId)) {
			sb.append(" and type_id = :typeId");
			paramMap.put("typeId", typeId);
		}
		Object serial = map.get("serial");
		if(!DPUtil.empty(serial)) {
			sb.append(" and operate_id in (select ").append(memberDao.getPrimaryKey())
				.append(" from ").append(memberDao.tableName()).append(" where serial = :serial)");
			paramMap.put("serial", serial);
		}
		if(!DPUtil.empty(orderBy)) sb.append(" order by ").append(orderBy);
		String sql = sb.toString();
		int total = noteDao.getCount(sql, paramMap, true).intValue();
		sql = DPUtil.stringConcat(sql, SqlUtil.buildLimit(page, pageSize));
		List<Map<String, Object>> rows = noteDao.npJdbcTemplate().queryForList(sql, paramMap);
		rows = ServiceUtil.fillFields(rows, new String[]{"status"}, new Map<?, ?>[]{getStatusMap(true)}, null);
		rows = ServiceUtil.fillRelations(rows, noteTypeDao, new String[]{"type_id"}, new String[]{"name"}, null);
		rows = ServiceUtil.fillRelations(rows, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		return DPUtil.buildMap(new String[]{"total", "rows"}, new Object[]{total, rows});
	}
	
	public List<Note> getList(Map<String, Object> where, Map<String, String> operators, String orderBy, int page, int pageSize) {
		String append = null;
		if(!DPUtil.empty(orderBy)) append = DPUtil.stringConcat(" order by ", orderBy);
		List<Note> list = noteDao.getList(where, operators, append, page, pageSize);
		return list;
	}
	
	public Note getById(Object id) {
		return noteDao.getById(id);
	}
	
	public Map<String, Object> getById(Object id, boolean bFill) {
		Map<String, Object> map = noteDao.getById("*", id);
		if(null != map && bFill) {
			map = ServiceUtil.fillFields(map, new String[]{"status"}, new Map<?, ?>[]{getStatusMap(true)}, null);
			map = ServiceUtil.fillRelations(map, noteTypeDao, new String[]{"type_id"}, new String[]{"name"}, null);
			map = ServiceUtil.fillRelations(map, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		}
		return map;
	}
	
	public int insert(Note persist) {
		return noteDao.insert(persist).intValue();
	}
	
	public int update(Note persist) {
		return noteDao.update(persist);
	}
	
	public int delete(Object... ids) {
		return noteDao.deleteByIds(ids);
	}
}
