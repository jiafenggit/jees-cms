package com.iisquare.jees.cms.dao;

import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Article;
import com.iisquare.jees.framework.model.DaoBase;
import com.iisquare.jees.framework.util.DPUtil;

@Repository
@Scope("prototype")
public class ArticleDao extends DaoBase<Article> {
	
	public ArticleDao() {
		super(Article.class);
	}
	
	/**
	 * 组合Web访问地址
	 */
	public String makeWebUrl(Article info, String webUrl, Integer page) {
		if(null == info) return "";
		Object id = info.getId();
		if(DPUtil.empty(id)) return "";
		return makeWebUrl(webUrl, info.getColumnId(), id, page);
	}
	
	/**
	 * 组合Web访问地址
	 */
	public String makeWebUrl(Map<String, Object> info, String webUrl, Integer page) {
		if(null == info) return "";
		Object id = info.get(getPrimaryKey());
		if(DPUtil.empty(id)) return "";
		return makeWebUrl(webUrl, info.get("column_id"), id, page);
	}
	
	/**
	 * 组合Web访问地址
	 */
	private String makeWebUrl(String webUrl, Object columnId, Object id, Integer page) {
		if(null == columnId) columnId = 0;
		if(null == id) id = 0;
		if(null == page || 1 > page) page = 1;
		StringBuilder sb = new StringBuilder().append(webUrl).append("/article-")
				.append(columnId).append("-").append(id).append("-").append(page).append(".shtml");
		return sb.toString();
	}
}
