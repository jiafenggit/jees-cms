package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.RoleResourceRel;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class RoleResourceRelDao extends DaoBase<RoleResourceRel> {
	
	public RoleResourceRelDao() {
		super(RoleResourceRel.class);
	}
}
