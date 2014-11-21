package com.iisquare.jees.cms.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

import com.iisquare.jees.framework.model.ServiceBase;
import com.iisquare.jees.framework.util.DPUtil;

@Service
public class TemplateService extends ServiceBase {

	public TemplateService() {}

	public List<Map<String, Object>> listFiles(String templateLoaderPath, String path) {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>(0);
		if(-1 != path.indexOf("..")) return list; // 禁止切换上级目录
		templateLoaderPath = templateLoaderPath.replaceAll("\\\\", "/");
		if(templateLoaderPath.endsWith("/")) templateLoaderPath = templateLoaderPath.substring(0, templateLoaderPath.length() - 1);
		File file = new File(DPUtil.stringConcat(templateLoaderPath, "/", path));
		if(!file.isDirectory()) return list;
		int folderLength = templateLoaderPath.length() + 1;
		for(File listFile : file.listFiles()) {
			Map<String, Object> map = new HashMap<String, Object>(0);
			String filePath = DPUtil.subString(listFile.getPath().replaceAll("\\\\", "/"), folderLength);
			map.put("id", filePath.replaceAll("/", "_"));
			map.put("fileName", listFile.getName());
			map.put("filePath", filePath);
			map.put("lastModified", listFile.lastModified());
			if(listFile.isDirectory()) {
				map.put("type", "folder");
				map.put("state", "closed");
				map.put("children", new Object[]{});
			} else {
				map.put("type", "file");
			}
			list.add(map);
		}
		return list;
	}
}