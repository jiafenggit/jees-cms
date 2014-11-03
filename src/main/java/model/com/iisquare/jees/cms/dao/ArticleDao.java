package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Article;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class ArticleDao extends DaoBase<Article> {
	
	public ArticleDao() {
		super(Article.class);
	}
}
