package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.RoleColumnRel;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class RoleColumnRelDao extends DaoBase<RoleColumnRel> {
	
	public RoleColumnRelDao() {
		super(RoleColumnRel.class);
	}
}
