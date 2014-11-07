package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.NoteType;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class NoteTypeDao extends DaoBase<NoteType> {
	
	public NoteTypeDao() {
		super(NoteType.class);
	}
}
