package com.iisquare.jees.cms.dao;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.iisquare.jees.cms.domain.Upload;
import com.iisquare.jees.framework.model.DaoBase;

@Repository
@Scope("prototype")
public class UploadDao extends DaoBase<Upload> {
	
	public UploadDao() {
		super(Upload.class);
	}
}
