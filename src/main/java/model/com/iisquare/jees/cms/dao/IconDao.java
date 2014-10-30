package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Icon;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class IconDao extends DaoBase<Icon> {
	
	public IconDao() {
		super(Icon.class);
	}
}
