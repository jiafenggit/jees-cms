package com.iisquare.jees.cms.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iisquare.jees.cms.dao.MemberDao;
import com.iisquare.jees.cms.dao.PartnerDao;
import com.iisquare.jees.cms.dao.PartnerTypeDao;
import com.iisquare.jees.cms.domain.Partner;
import com.iisquare.jees.framework.Configuration;
import com.iisquare.jees.framework.model.ServiceBase;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServiceUtil;
import com.iisquare.jees.framework.util.SqlUtil;
import com.iisquare.jees.framework.util.ValidateUtil;

@Service
public class PartnerService extends ServiceBase {
	
	@Autowired
	public MemberDao memberDao;
	@Autowired
	public PartnerDao partnerDao;
	@Autowired
	public PartnerTypeDao partnerTypeDao;
	@Autowired
	public Configuration configuration;
	
	public final String defaultLogo = "skin/images/nopic_partner.jpg";
	
	public Map<String, String> getStatusMap(boolean bAll) {
		Map<String, String> map = new LinkedHashMap<String, String>();
		if(bAll) {
			map.put("-1", "已删除");
		}
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
	
	public PartnerService() {}
	
	public List<Map<String, Object>> getWebList() {
		List<Map<String, Object>> typeList = partnerTypeDao.getList("*", new String[]{"status"}, new Object[]{1}, null, "order by sort desc", 0, 0);
		List<Map<String, Object>> partnerList = partnerDao.getList("*", "status = 1 and (logo_enable = 1 or text_enable = 1)", new Object[]{}, "order by sort desc", 0, 0);
		Map<Object, List<Map<String, Object>>> indexMap = ServiceUtil.indexesMapList(partnerList, "type_id");
		String typePrimaryKey = partnerTypeDao.getPrimaryKey();
		for (Map<String, Object> map : typeList) {
			List<Map<String, Object>> childrenLogoTitle = new ArrayList<Map<String, Object>>();
			List<Map<String, Object>> childrenLogoOnly = new ArrayList<Map<String, Object>>();
			List<Map<String, Object>> childrenTextOnly = new ArrayList<Map<String, Object>>();
			List<Map<String, Object>> childrenList = indexMap.get(map.get(typePrimaryKey));
			if(null != childrenList) {
				for (Map<String, Object> childrenMap : childrenList) {
					if(!DPUtil.empty(childrenMap.get("logo_enable")) && !DPUtil.empty(childrenMap.get("text_enable"))) {
						childrenLogoTitle.add(childrenMap); // 图文模式
						continue ;
					}
					if(!DPUtil.empty(childrenMap.get("logo_enable"))) {
						childrenLogoOnly.add(childrenMap); // 图片模式
						continue ;
					}
					if(!DPUtil.empty(childrenMap.get("text_enable"))) {
						childrenTextOnly.add(childrenMap); // 文本模式
						continue ;
					}
				}
			}
			map.put("children_logo_title", childrenLogoTitle);
			map.put("children_logo_only", childrenLogoOnly);
			map.put("children_text_only", childrenTextOnly);
		}
		return typeList;
	}
	
	public Map<Object, Object> search(Map<String, Object> map, String orderBy, int page, int pageSize) {
		StringBuilder sb = new StringBuilder("select * from ")
			.append(partnerDao.tableName()).append(" where 1 = 1");
		Map<String, Object> paramMap = new HashMap<String, Object>();
		Object name = map.get("name");
		if(!DPUtil.empty(name)) {
			sb.append(" and name like :name");
			paramMap.put("name", DPUtil.stringConcat("%", name, "%"));
		}
		int typeId = ValidateUtil.filterInteger(DPUtil.parseString(map.get("typeId")), true, 0, null, 0);
		if(!DPUtil.empty(typeId)) {
			sb.append(" and type_id = :typeId");
			paramMap.put("typeId", typeId);
		}
		Object description = map.get("description");
		if(!DPUtil.empty(description)) {
			sb.append(" and description like :description");
			paramMap.put("description", DPUtil.stringConcat("%", description, "%"));
		}
		Object goal = map.get("goal");
		if(!DPUtil.empty(goal)) {
			sb.append(" and goal = :goal");
			paramMap.put("goal", goal);
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
		int total = partnerDao.getCount(sql, paramMap, true);
		sql = DPUtil.stringConcat(sql, SqlUtil.buildLimit(page, pageSize));
		List<Map<String, Object>> rows = partnerDao.npJdbcTemplate().queryForList(sql, paramMap);
		rows = ServiceUtil.fillFields(rows, new String[]{"status", "goal"}, new Map<?, ?>[]{getStatusMap(true), getGoalMap()}, null);
		rows = ServiceUtil.fillRelations(rows, partnerTypeDao, new String[]{"type_id"}, new String[]{"name"}, null);
		rows = ServiceUtil.fillRelations(rows, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		return DPUtil.buildMap(new String[]{"total", "rows"}, new Object[]{total, rows});
	}
	
	public List<Partner> getList(Map<String, Object> where, Map<String, String> operators, String orderBy, int page, int pageSize) {
		String append = null;
		if(!DPUtil.empty(orderBy)) append = DPUtil.stringConcat(" order by ", orderBy);
		List<Partner> list = partnerDao.getList(where, operators, append, page, pageSize);
		return list;
	}
	
	public Partner getById(Object id) {
		return partnerDao.getById(id);
	}
	
	public Map<String, Object> getById(Object id, boolean bFill) {
		Map<String, Object> map = partnerDao.getById("*", id);
		if(null != map && bFill) {
			map = ServiceUtil.fillFields(map, new String[]{"status", "goal"}, new Map<?, ?>[]{getStatusMap(true), getGoalMap()}, null);
			map = ServiceUtil.fillRelations(map, partnerTypeDao, new String[]{"type_id"}, new String[]{"name"}, null);
			map = ServiceUtil.fillRelations(map, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		}
		return map;
	}
	
	public int insert(Partner persist) {
		return partnerDao.insert(persist);
	}
	
	public int update(Partner persist) {
		return partnerDao.update(persist);
	}
	
	public int delete(Object... ids) {
		return partnerDao.deleteByIds(ids);
	}
}
