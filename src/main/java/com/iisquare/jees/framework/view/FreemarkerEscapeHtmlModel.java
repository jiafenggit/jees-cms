package com.iisquare.jees.framework.view;

import java.util.List;

import org.apache.commons.lang.StringEscapeUtils;

import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModelException;

/**
 * 编码HTML特殊字符
 */
public class FreemarkerEscapeHtmlModel implements TemplateMethodModelEx {
	
	@SuppressWarnings("rawtypes")
	@Override
	public Object exec(List list) throws TemplateModelException {
		return StringEscapeUtils.escapeHtml(list.get(0).toString());
	}
}