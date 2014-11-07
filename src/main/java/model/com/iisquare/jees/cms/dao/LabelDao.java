package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Label;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class LabelDao extends DaoBase<Label> {
	
	public LabelDao() {
		super(Label.class);
	}
}
