package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Notice;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class NoticeDao extends DaoBase<Notice> {
	
	public NoticeDao() {
		super(Notice.class);
	}
}
