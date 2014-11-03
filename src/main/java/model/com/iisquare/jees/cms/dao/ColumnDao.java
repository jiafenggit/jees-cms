package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Column;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class ColumnDao extends DaoBase<Column> {
	
	public ColumnDao() {
		super(Column.class);
	}
}
