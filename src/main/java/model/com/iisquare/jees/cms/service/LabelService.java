package com.iisquare.jees.cms.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iisquare.jees.cms.dao.MemberDao;
import com.iisquare.jees.cms.dao.LabelDao;
import com.iisquare.jees.cms.domain.Label;
import com.iisquare.jees.framework.controller.ControllerBase;
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
		map.put("comment", "评论列表");
		map.put("slideshow", "幻灯片列表");
		return map;
	}
	
	public Map<String, String> getArticleSortNameMap() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("sort", "默认排序");
		map.put("publish_time", "发布时间");
		map.put("update_time", "修改时间");
		map.put("create_time", "创建时间");
		map.put("count_view", "访问数");
		map.put("count_comment", "评论数");
		map.put("count_partake", "参与数");
		return map;
	}
	
	public Map<String, String> getCommentSortNameMap() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("create_time", "创建时间");
		map.put("update_time", "修改时间");
		return map;
	}
	
	public Map<String, String> getSortOrderMap() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("desc", "降序");
		map.put("asc", "升序");
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
	
	public Map<String, Object> getContentMap(ControllerBase base,
			String keyGroup, String keyName, boolean bStatusNormal, boolean bConvert) {
		return getContentMap(base._MODULE_, base._CONTROLLER_, base._ACTION_, keyGroup, keyName, bStatusNormal, bConvert);
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
			Object labelContent = bConvert ? parseLabel(DPUtil.parseString(map.get("effect")), DPUtil.parseString(map.get("content"))) : map.get("content");
			contentMap.put(labelKey, labelContent);
		}
		return contentMap;
	}
	
	/**
	 * 转换标签内容
	 * @param effect
	 * @param content
	 * @return
	 */
	public Object parseLabel(String effect, String content) {
		if("html".equals(effect)) return parseLabelHtml(content);
		if("article".equals(effect)) return parseLabelArticle(content);
		if("comment".equals(effect)) return parseLabelComment(content);
		if("slideshow".equals(effect)) return parseLabelSlideshow(content);
		return "";
	}
	
	public String parseLabelHtml(String content) {
		if(null == content) return "";
		return content;
	}
	
	public String parseLabelArticle(String content) { // 待处理
		if(null == content) return "";
		return content;
	}
	
	public String parseLabelComment(String content) { // 待处理
		if(null == content) return "";
		return content;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Map<String, Object>> convertLabelSlideshow(int space, String suffix, Object rowsMap) {
		Map<String, Map<String, Object>> map = (Map<String, Map<String, Object>>) rowsMap;
		for (Entry<String, Map<String, Object>> entry : map.entrySet()) {
			Map<String, Object> subMap = entry.getValue();
			String title = DPUtil.parseString(subMap.get("title"));
			String shortTitle = space > 0 ? DPUtil.subStringWithByte(title, space, suffix, null) : title;
			subMap.put("short_title", shortTitle);
		}
		return map;
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> parseLabelSlideshow(String content) {
		Map<?, ?> map = JSONObject.fromObject(content);
		if(DPUtil.empty(map)) return null;
		Map<String, Map<String, Object>> rowsMap = (Map<String, Map<String, Object>>) map.get("rows");
		int size = rowsMap.size();
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>(size);
		for (int i = 0; i < size; i++) {
			list.add(rowsMap.get(new Integer(i).toString()));
		}
		return list;
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
	
	public int updateContent(Object id, String content) {
		return labelDao.updateByIds(new String[]{"content"}, new Object[]{content}, id);
	}
	
	public int delete(Object... ids) {
		return labelDao.deleteByIds(ids);
	}
}
