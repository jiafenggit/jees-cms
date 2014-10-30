package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Setting;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class SettingDao extends DaoBase<Setting> {
	
	public SettingDao() {
		super(Setting.class);
	}
}
