package com.iisquare.jees.cms.dao;

import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Column;
import com.iisquare.jees.framework.model.DaoBase;
import com.iisquare.jees.framework.util.DPUtil;

@Repository
@Scope("prototype")
public class ColumnDao extends DaoBase<Column> {
	
	public ColumnDao() {
		super(Column.class);
	}
	
	/**
	 * 组合Web访问地址
	 */
	public String makeWebUrl(Column info, String webUrl, Integer page) {
		if(null == info) return "";
		Object id = info.getId();
		if(DPUtil.empty(id)) return "";
		return makeWebUrl(webUrl, id, page);
	}
	
	/**
	 * 组合Web访问地址
	 */
	public String makeWebUrl(Map<String, Object> info, String webUrl, Integer page) {
		if(null == info) return "";
		Object id = info.get(getPrimaryKey());
		if(DPUtil.empty(id)) return "";
		return makeWebUrl(webUrl, id, page);
	}
	
	/**
	 * 组合Web访问地址
	 */
	private String makeWebUrl(String webUrl, Object id, Integer page) {
		if(null == page || 1 > page) page = 1;
		StringBuilder sb = new StringBuilder().append(webUrl)
				.append("/column-").append(id).append("-").append(page).append(".shtml");
		return sb.toString();
	}
}
