package com.iisquare.jees.cms.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

import com.iisquare.jees.framework.model.ServiceBase;
import com.iisquare.jees.framework.util.DPUtil;
import com.iisquare.jees.framework.util.FileUtil;

@Service
public class TemplateService extends ServiceBase {

	public TemplateService() {}

	/**
	 * 转换模板目录路径
	 * @param templateLoaderPath
	 * @return
	 */
	public String convertLoaderPath(String templateLoaderPath) {
		templateLoaderPath = templateLoaderPath.replaceAll("\\\\", "/");
		if(templateLoaderPath.endsWith("/")) templateLoaderPath = templateLoaderPath.substring(0, templateLoaderPath.length() - 1);
		return templateLoaderPath;
	}
	
	/**
	 * 判断文件路径是否合法
	 * @param path
	 * @return
	 */
	public boolean isLegalPath(String path) {
		if(null == path || -1 != path.indexOf("..")) return false; // 禁止切换上级目录
		return true;
	}
	
	/**
	 * 获取模板目录文件列表
	 * @param templateLoaderPath 模板目录
	 * @param path 加载路径
	 * @return
	 */
	public List<Map<String, Object>> listFiles(String templateLoaderPath, String path) {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>(0);
		if(!isLegalPath(path)) return list;
		templateLoaderPath = convertLoaderPath(templateLoaderPath);
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
	
	/**
	 * 获取模板文件内容
	 * @param templateLoaderPath 模板目录
	 * @param path 模板文件路径
	 * @param suffix 模板文件后缀
	 * @return
	 */
	public String getTempalteContent(String templateLoaderPath, String path, String suffix) {
		if(!isLegalPath(path)) return null;
		if(!path.endsWith(suffix)) return null;
		return FileUtil.getContent(DPUtil.stringConcat(templateLoaderPath, "/", path));
	}
}