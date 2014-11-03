package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.ColumnRoleRel;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class ColumnRoleRelDao extends DaoBase<ColumnRoleRel> {
	
	public ColumnRoleRelDao() {
		super(ColumnRoleRel.class);
	}
}
