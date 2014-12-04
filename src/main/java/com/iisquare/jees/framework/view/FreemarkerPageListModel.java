package com.iisquare.jees.framework.view;

import java.util.ArrayList;
import java.util.List;

import com.iisquare.jees.framework.util.DPUtil;

import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModelException;

/**
 * 生成分页列表
 */
public class FreemarkerPageListModel implements TemplateMethodModelEx {
	
	@SuppressWarnings("rawtypes")
	@Override
	public Object exec(List list) throws TemplateModelException {
		int pageCurrent = DPUtil.parseInt(DPUtil.getByIndex(list, 0)); // 当前页码
		if(pageCurrent < 1) pageCurrent = 1;
		int pageSize = DPUtil.parseInt(DPUtil.getByIndex(list, 1)); // 分页大小
		if(pageSize < 1) pageSize = 1;
		int pageTotal = DPUtil.parseInt(DPUtil.getByIndex(list, 2)); // 总记录数
		if(pageTotal < 0) pageTotal = 0;
		int pageListCount = DPUtil.parseInt(DPUtil.getByIndex(list, 3)); // 分页列表大小
		if(pageListCount < 1) pageListCount = 1;
		int pageCount = (int) Math.ceil((double) pageTotal / (double) pageSize); // 总页数
		if(pageCount < 1) pageCount = 1;
		int pageListStart = pageCurrent - pageListCount / 2; // 开始页数
		int pageListEnd = pageListStart + pageListCount - 1; // 结束页数
		if(1 > pageListStart) { // 开始页数溢出处理
			pageListEnd -= pageListStart - 1;
			pageListStart = 1;
		}
		if(pageListEnd > pageCount) { // 结束页数溢出处理
			pageListStart -= pageListEnd - pageCount;
			if(pageListStart < 1) pageListStart = 1;
			pageListEnd = pageCount;
		}
		/* 生成分页列表 */
		List<Integer> pageList = new ArrayList<Integer>(pageListCount);
		for (int i = pageListStart; i <= pageListEnd; i++) {
			pageList.add(i);
		}
		return pageList;
	}
}