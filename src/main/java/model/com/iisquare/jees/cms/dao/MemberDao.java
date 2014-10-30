package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Member;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class MemberDao extends DaoBase<Member> {
	
	public MemberDao() {
		super(Member.class);
	}
}
