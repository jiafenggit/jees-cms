package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Resource;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class ResourceDao extends DaoBase<Resource> {
	
	public ResourceDao() {
		super(Resource.class);
	}
}
