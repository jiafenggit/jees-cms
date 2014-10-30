package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Menu;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class MenuDao extends DaoBase<Menu> {
	
	public MenuDao() {
		super(Menu.class);
	}
}
