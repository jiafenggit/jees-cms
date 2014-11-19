package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.ForbiddenWord;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class ForbiddenWordDao extends DaoBase<ForbiddenWord> {
	
	public ForbiddenWordDao() {
		super(ForbiddenWord.class);
	}
}
