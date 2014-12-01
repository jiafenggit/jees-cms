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
	 * @param info
	 * @return
	 */
	public String makeWebUrl(Column info, String webUrl) {
		if(null == info) return "";
		Object id = info.getId();
		if(DPUtil.empty(id)) return "";
		return DPUtil.stringConcat(webUrl, "/column-", id, ".shtml");
	}
	
	/**
	 * 组合Web访问地址
	 * @param info
	 * @return
	 */
	public String makeWebUrl(Map<String, Object> info, String webUrl) {
		if(null == info) return "";
		Object id = info.get(getPrimaryKey());
		if(DPUtil.empty(id)) return "";
		return DPUtil.stringConcat(webUrl, "/column-", id, ".shtml");
	}
}
