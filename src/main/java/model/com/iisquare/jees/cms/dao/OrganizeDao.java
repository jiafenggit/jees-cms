package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Organize;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class OrganizeDao extends DaoBase<Organize> {
	
	public OrganizeDao() {
		super(Organize.class);
	}
}
