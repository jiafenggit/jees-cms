package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.NoticeType;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class NoticeTypeDao extends DaoBase<NoticeType> {
	
	public NoticeTypeDao() {
		super(NoticeType.class);
	}
}
