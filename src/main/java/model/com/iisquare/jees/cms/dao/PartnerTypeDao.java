package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.PartnerType;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class PartnerTypeDao extends DaoBase<PartnerType> {
	
	public PartnerTypeDao() {
		super(PartnerType.class);
	}
}
