package com.iisquare.jees.cms.service;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iisquare.jees.cms.dao.MemberDao;
import com.iisquare.jees.cms.dao.ArticleDao;
import com.iisquare.jees.cms.dao.ColumnDao;
import com.iisquare.jees.cms.domain.Article;
import com.iisquare.jees.framework.Configuration;
import com.iisquare.jees.framework.model.ServiceBase;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.ServiceUtil;
import com.iisquare.jees.framework.util.SqlUtil;
import com.iisquare.jees.framework.util.ValidateUtil;

@Service
public class ArticleService extends ServiceBase {
	
	@Autowired
	public MemberDao memberDao;
	@Autowired
	public ArticleDao articleDao;
	@Autowired
	public ColumnDao columnDao;
	@Autowired
	public Configuration configuration;
	
	public final String defaultLogo = "skin/images/nopic_article.jpg";
	
	public Map<String, String> getStatusMap(boolean bAll) {
		Map<String, String> map = new LinkedHashMap<String, String>();
		if(bAll) {
			map.put("-1", "已删除");
		}
		map.put("0", "审核中");
		map.put("1", "正常");
		map.put("2", "审核未通过");
		return map;
	}
	
	public ArticleService() {}
	
	public Map<Object, Object> search(Map<String, Object> map, String orderBy, String webUrl, int page, int pageSize) {
		StringBuilder sb = new StringBuilder("select * from ")
			.append(articleDao.tableName()).append(" where 1 = 1");
		Map<String, Object> paramMap = new HashMap<String, Object>();
		Object title = map.get("title");
		if(!DPUtil.empty(title)) {
			sb.append(" and title like :title");
			paramMap.put("title", DPUtil.stringConcat("%", title, "%"));
		}
		String exceptIds = SqlUtil.buildSafeWhere(",", (Object[]) map.get("exceptIds"));
		if(!DPUtil.empty(exceptIds)) {
			sb.append(" and ").append(articleDao.getPrimaryKey()).append(" not in (").append(exceptIds).append(")");
		}
		String columnIds = SqlUtil.buildSafeWhere(",", (Object[]) map.get("columnIds"));
		if(!DPUtil.empty(columnIds)) {
			sb.append(" and column_id in (").append(columnIds).append(")");
		}
		Object keywords = map.get("keywords");
		if(!DPUtil.empty(keywords)) {
			sb.append(" and keywords like :keywords");
			paramMap.put("keywords", DPUtil.stringConcat("%", keywords, "%"));
		}
		Object description = map.get("description");
		if(!DPUtil.empty(description)) {
			sb.append(" and description like :description");
			paramMap.put("description", DPUtil.stringConcat("%", description, "%"));
		}
		Object fromName = map.get("fromName");
		if(!DPUtil.empty(fromName)) {
			sb.append(" and from_name = :fromName");
			paramMap.put("fromName", fromName);
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
		int total = articleDao.getCount(sql, paramMap, true).intValue();
		sql = DPUtil.stringConcat(sql, SqlUtil.buildLimit(page, pageSize));
		List<Map<String, Object>> rows = articleDao.npJdbcTemplate().queryForList(sql, paramMap);
		fillWebUrl(rows, webUrl, "web_url");
		rows = ServiceUtil.fillFields(rows, new String[]{"status"}, new Map<?, ?>[]{getStatusMap(true)}, null);
		rows = ServiceUtil.fillRelations(rows, columnDao, new String[]{"column_id"}, new String[]{"name"}, null);
		rows = ServiceUtil.fillRelations(rows, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		return DPUtil.buildMap(new String[]{"total", "rows"}, new Object[]{total, rows});
	}
	
	/**
	 * 填充URL地址
	 * @param list 源数据列表
	 * @param webUrl 网站访问地址
	 * @param key 填充下标
	 * @return
	 */
	public List<Map<String, Object>> fillWebUrl(List<Map<String, Object>> list, String webUrl, String key) {
		if(null == key) key = "url";
		for (Map<String, Object> map : list) {
			String url = DPUtil.parseString(map.get("url"));
			if(DPUtil.empty(url)) url = articleDao.makeWebUrl(map, webUrl, null);
			map.put(key, url);
		}
		return list;
	}
	
	public List<Map<String, Object>> getListByIds(Object... ids) {
		return articleDao.getByIds("*", ids);
	}
	
	public Article getById(Object id) {
		return articleDao.getById(id);
	}
	
	public Map<String, Object> getById(Object id, boolean bFill) {
		Map<String, Object> map = articleDao.getById("*", id);
		if(null != map && bFill) {
			map = ServiceUtil.fillFields(map, new String[]{"status"}, new Map<?, ?>[]{getStatusMap(true)}, null);
			map = ServiceUtil.fillRelations(map, columnDao, new String[]{"column_id"}, new String[]{"name"}, null);
			map = ServiceUtil.fillRelations(map, memberDao, new String[]{"create_id", "update_id"}, new String[]{"serial", "name"}, null);
		}
		return map;
	}
	
	public int insert(Article persist) {
		return articleDao.insert(persist).intValue();
	}
	
	public int update(Article persist) {
		return articleDao.update(persist);
	}
	
	public int delete(Object... ids) {
		return articleDao.deleteByIds(ids);
	}
}
