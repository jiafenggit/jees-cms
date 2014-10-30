package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.RoleMenuRel;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class RoleMenuRelDao extends DaoBase<RoleMenuRel> {
	
	public RoleMenuRelDao() {
		super(RoleMenuRel.class);
	}
}
