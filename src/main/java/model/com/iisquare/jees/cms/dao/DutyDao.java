package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Duty;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class DutyDao extends DaoBase<Duty> {
	
	public DutyDao() {
		super(Duty.class);
	}
}
