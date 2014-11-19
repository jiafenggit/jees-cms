package com.iisquare.jees.cms.service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iisquare.jees.cms.dao.MemberDao;
import com.iisquare.jees.cms.dao.ForbiddenWordDao;
import com.iisquare.jees.cms.domain.ForbiddenWord;
import com.iisquare.jees.framework.Configuration;
import com.iisquare.jees.framework.model.ServiceBase;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServiceUtil;
import com.iisquare.jees.framework.util.SqlUtil;
import com.iisquare.jees.framework.util.ValidateUtil;

@Service
public class ForbiddenWordService extends ServiceBase {
	
	@Autowired
	public MemberDao memberDao;
	@Autowired
	public ForbiddenWordDao forbiddenWordDao;
	@Autowired
	public Configuration configuration;
	
	public Map<String, String> getStatusMap() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("0", "禁用");
		map.put("1", "正常");
		return map;
	}
	
	public ForbiddenWordService() {}
	
	public Map<Object, Object> search(Map<String, Object> map, String orderBy, int page, int pageSize) {
		StringBuilder sb = new StringBuilder("select * from ")
			.append(forbiddenWordDao.tableName()).append(" where 1 = 1");
		Map<String, Object> paramMap = new HashMap<String, Object>();
		Object word = map.get("word");
		if(!DPUtil.empty(word)) {
			sb.append(" and word like :word");
			paramMap.put("word", DPUtil.stringConcat("%", word, "%"));
		}
		Object type = map.get("type");
		if(!DPUtil.empty(type)) {
			sb.append(" and type = :type");
			paramMap.put("type", type);
		}
		String status = DPUtil.parseString(map.get("status"));
		if(!ValidateUtil.isNull(status, true)) {
			sb.append(" and status = :status");
			paramMap.put("status", DPUtil.parseInt(status));
		}
		Object serialCreate = map.get("serialCreate");
		if(!DPUtil.empty(serialCreate)) {
			sb.append(" and operate_id in (select ").append(memberDao.getPrimaryKey())
				.append(" from ").append(memberDao.tableName()).append(" where serial = :serialCreate)");
			paramMap.put("serialCreate", serialCreate);
		}
		Object serialModify = map.get("serialModify");
		if(!DPUtil.empty(serialModify)) {
			sb.append(" and operate_id in (select ").append(memberDao.getPrimaryKey())
				.append(" from ").append(memberDao.tableName()).append(" where serial = :serialModify)");
			paramMap.put("serialModify", serialModify);
		}
		Object timeStartCreate = map.get("timeStartCreate");
		if(!DPUtil.empty(timeStartCreate)) {
			sb.append(" and create_time >= :timeStartCreate");
			paramMap.put("timeStartCreate", DPUtil.dateTimeToMillis(timeStartCreate, configuration.getDateTimeFormat()));
		}
		Object timeEndCreate = map.get("timeEndCreate");
		if(!DPUtil.empty(timeEndCreate)) {
			sb.append(" and create_time <= :timeEndCreate");
			paramMap.put("timeEndCreate", DPUtil.dateTimeToMillis(timeEndCreate, configuration.getDateTimeFormat()));
		}
		Object timeStartModify = map.get("timeStartModify");
		if(!DPUtil.empty(timeStartModify)) {
			sb.append(" and modify_time >= :timeStartModify");
			paramMap.put("timeStartModify", DPUtil.dateTimeToMillis(timeStartModify, configuration.getDateTimeFormat()));
		}
		Object timeEndModify = map.get("timeEndModify");
		if(!DPUtil.empty(timeEndModify)) {
			sb.append(" and modify_time <= :timeEndModify");
			paramMap.put("timeEndModify", DPUtil.dateTimeToMillis(timeEndModify, configuration.getDateTimeFormat()));
		}
		if(!DPUtil.empty(orderBy)) sb.append(" order by ").append(orderBy);
		String sql = sb.toString();
		int total = forbiddenWordDao.getCount(sql, paramMap, true);
		sql = DPUtil.stringConcat(sql, SqlUtil.buildLimit(page, pageSize));
		List<Map<String, Object>> rows = forbiddenWordDao.npJdbcTemplate().queryForList(sql, paramMap);
		rows = ServiceUtil.fillFields(rows, new String[]{"status"}, new Map<?, ?>[]{getStatusMap()}, null);
		rows = ServiceUtil.fillRelations(rows, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		return DPUtil.buildMap(new String[]{"total", "rows"}, new Object[]{total, rows});
	}
	
	public ForbiddenWord getById(Object id) {
		return forbiddenWordDao.getById(id);
	}
	
	public Map<String, Object> getById(Object id, boolean bFill) {
		Map<String, Object> map = forbiddenWordDao.getById("*", id);
		if(null != map && bFill) {
			map = ServiceUtil.fillFields(map, new String[]{"status"}, new Map<?, ?>[]{getStatusMap()}, null);
			map = ServiceUtil.fillRelations(map, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		}
		return map;
	}
	
	public int insert(ForbiddenWord persist) {
		return forbiddenWordDao.insert(persist);
	}
	
	public int update(ForbiddenWord persist) {
		return forbiddenWordDao.update(persist);
	}
	
	public int delete(Object... ids) {
		return forbiddenWordDao.deleteByIds(ids);
	}
}
