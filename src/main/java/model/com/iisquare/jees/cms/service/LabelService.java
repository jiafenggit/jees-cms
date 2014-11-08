package com.iisquare.jees.cms.service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iisquare.jees.cms.dao.MemberDao;
import com.iisquare.jees.cms.dao.LabelDao;
import com.iisquare.jees.cms.domain.Label;
import com.iisquare.jees.framework.model.ServiceBase;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServiceUtil;
import com.iisquare.jees.framework.util.SqlUtil;

@Service
public class LabelService extends ServiceBase {
	
	@Autowired
	public MemberDao memberDao;
	@Autowired
	public LabelDao labelDao;
	
	public Map<String, String> getStatusMap() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("0", "禁用");
		map.put("1", "正常");
		return map;
	}
	
	public Map<String, String> getEffectMap() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("html", "HTML代码");
		map.put("article", "文章列表");
		return map;
	}
	
	public LabelService() {}
	
	public Map<Object, Object> search(Map<String, Object> map, String orderBy, int page, int pageSize) {
		StringBuilder sb = new StringBuilder("select * from ")
			.append(labelDao.tableName()).append(" where 1 = 1");
		Map<String, Object> paramMap = new HashMap<String, Object>();
		Object name = map.get("name");
		if(!DPUtil.empty(name)) {
			sb.append(" and name like :name");
			paramMap.put("name", DPUtil.stringConcat("%", name, "%"));
		}
		Object module = map.get("module");
		if(!DPUtil.empty(module)) {
			sb.append(" and module = :module");
			paramMap.put("module", module);
		}
		Object controller = map.get("controller");
		if(!DPUtil.empty(controller)) {
			sb.append(" and controller = :controller");
			paramMap.put("controller", controller);
		}
		Object action = map.get("action");
		if(!DPUtil.empty(action)) {
			sb.append(" and action = :action");
			paramMap.put("action", action);
		}
		Object keyGroup = map.get("keyGroup");
		if(!DPUtil.empty(keyGroup)) {
			sb.append(" and key_group = :keyGroup");
			paramMap.put("keyGroup", keyGroup);
		}
		Object keyName = map.get("keyName");
		if(!DPUtil.empty(keyName)) {
			sb.append(" and key_name = :keyName");
			paramMap.put("keyName", keyName);
		}
		Object effect = map.get("effect");
		if(!DPUtil.empty(effect)) {
			sb.append(" and effect = :effect");
			paramMap.put("effect", effect);
		}
		if(!DPUtil.empty(orderBy)) sb.append(" order by ").append(orderBy);
		String sql = sb.toString();
		int total = labelDao.getCount(sql, paramMap, true);
		sql = DPUtil.stringConcat(sql, SqlUtil.buildLimit(page, pageSize));
		List<Map<String, Object>> rows = labelDao.npJdbcTemplate().queryForList(sql, paramMap);
		rows = ServiceUtil.fillFields(rows, new String[]{"status", "effect"}, new Map<?, ?>[]{getStatusMap(), getEffectMap()}, null);
		rows = ServiceUtil.fillRelations(rows, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		return DPUtil.buildMap(new String[]{"total", "rows"}, new Object[]{total, rows});
	}
	
	public List<Label> getList(Map<String, Object> where, Map<String, String> operators, String orderBy, int page, int pageSize) {
		String append = null;
		if(!DPUtil.empty(orderBy)) append = DPUtil.stringConcat(" order by ", orderBy);
		List<Label> list = labelDao.getList(where, operators, append, page, pageSize);
		return list;
	}
	
	/**
	 * 获取页面标签记录
	 * @param module 模块名称
	 * @param controller 控制器名称
	 * @param action 方法名称
	 * @param keyGroup 标签组，仅用于筛选
	 * @param keyName 标签名称，在同一页面中唯一
	 * @param bStatusNormal 仅获取正常状态的记录
	 * @param bConvert 转换标签内容，生成数据
	 * @return
	 */
	public Map<String, Object> getContentMap(String module, String controller,
			String action, String keyGroup, String keyName, boolean bStatusNormal, boolean bConvert) {
		StringBuilder sb = new StringBuilder("select * from ")
			.append(labelDao.tableName()).append(" where 1 = 1");
		Map<String, Object> paramMap = new HashMap<String, Object>();
		if(!DPUtil.empty(module)) {
			sb.append(" and module = :module");
			paramMap.put("module", module);
		}
		if(!DPUtil.empty(controller)) {
			sb.append(" and controller = :controller");
			paramMap.put("controller", controller);
		}
		if(!DPUtil.empty(action)) {
			sb.append(" and action = :action");
			paramMap.put("action", action);
		}
		if(!DPUtil.empty(keyGroup)) {
			sb.append(" and key_group = :keyGroup");
			paramMap.put("keyGroup", keyGroup);
		}
		if(!DPUtil.empty(keyName)) {
			sb.append(" and key_name = :keyName");
			paramMap.put("keyName", keyName);
		}
		if(bStatusNormal) {
			sb.append(" and status = 1");
		}
		List<Map<String, Object>> rows = labelDao.npJdbcTemplate().queryForList(sb.toString(), paramMap);
		Map<String, Object> contentMap = new HashMap<String, Object>(DPUtil.parseInt(rows.size() / 0.75f));
		for (Map<String, Object> map : rows) {
			String labelKey = DPUtil.parseString(map.get("key_name"));
			Object labelContent = bConvert ? map.get("content") : map.get("content"); // 转换功能待处理
			contentMap.put(labelKey, labelContent);
		}
		return contentMap;
	}
	
	public Label getById(Object id) {
		return labelDao.getById(id);
	}
	
	public Map<String, Object> getById(Object id, boolean bFill) {
		Map<String, Object> map = labelDao.getById("*", id);
		if(null != map && bFill) {
			map = ServiceUtil.fillFields(map, new String[]{"status", "effect"}, new Map<?, ?>[]{getStatusMap(), getEffectMap()}, null);
			map = ServiceUtil.fillRelations(map, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		}
		return map;
	}
	
	public int insert(Label persist) {
		return labelDao.insert(persist);
	}
	
	public int update(Label persist) {
		return labelDao.update(persist);
	}
	
	public int delete(Object... ids) {
		return labelDao.deleteByIds(ids);
	}
}
