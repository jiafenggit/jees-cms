package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Note;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class NoteDao extends DaoBase<Note> {
	
	public NoteDao() {
		super(Note.class);
	}
}
