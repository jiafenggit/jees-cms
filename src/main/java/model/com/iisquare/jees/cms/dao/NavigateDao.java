package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Navigate;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class NavigateDao extends DaoBase<Navigate> {
	
	public NavigateDao() {
		super(Navigate.class);
	}
}
