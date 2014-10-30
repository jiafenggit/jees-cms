package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Role;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class RoleDao extends DaoBase<Role> {
	
	public RoleDao() {
		super(Role.class);
	}
}
