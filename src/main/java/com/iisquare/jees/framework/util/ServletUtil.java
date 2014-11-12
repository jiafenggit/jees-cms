package com.iisquare.jees.framework.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet操作类
 */
public class ServletUtil {
	
	public static final String cookieEncoding = "UTF-8";
	public static final String regexParameterMapKey = "((?<!\\[)[^\\[\\]]+(?!\\])|(?<=\\[)[^\\[\\]]*(?=\\]))";
	
	/**
	 * 将parameterMap转换为单值，数组方式通过在key后添加[]提交
	 */
	public static Map<String, Object> singleParameterMap(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		for (Map.Entry<String, String[]> entry : request.getParameterMap().entrySet()) {
			String key = entry.getKey();
			String[] value = entry.getValue();
			if(key.endsWith("[]")) {
				map.put(key.substring(0, key.length() - 2), value);
			} else {
				map.put(key, value[0]);
			}
		}
		return map;
	}
	
	public static void main(String[] args) {
		Map<String, String[]> parameterMap = new LinkedHashMap<String, String[]>();
		parameterMap.put("id", new String[]{"124"});
		parameterMap.put("x1[y1]", new String[]{"asag"});
		parameterMap.put("x1[y2][]", new String[]{"gdgdg"});
		parameterMap.put("x1[y2][]", new String[]{"hdfhd"});
		parameterMap.put("x1[y3][z1]", new String[]{"1dg24"});
		parameterMap.put("x1[y3][z2]", new String[]{"wtcb"});
		parameterMap.put("x1[y3][z3][]", new String[]{"asff"});
		parameterMap.put("x2[y 3]", new String[]{"asdsff"});
		parseParameterMap(parameterMap);
	}
	
	/**
	 * 解析ParameterMap，将中括号[]中的字符串转换为下标
	 * 下标支持非中括号[]的任意字符，包括空格等
	 * @param parameterMap 参数Map
	 * @return
	 */
	public static Map<String, Object> parseParameterMap(Map<String, String[]> parameterMap) {
		Map<String, Object> map = new LinkedHashMap<String, Object>();
		System.out.println(regexParameterMapKey);
		for (Map.Entry<String, String[]> entry : parameterMap.entrySet()) {
			String key = entry.getKey();
			//String[] value = entry.getValue();
			List<String> fields = DPUtil.getMatcher(regexParameterMapKey, key, true);
			System.out.println(key + ":" + DPUtil.implode(",", DPUtil.collectionToArray(fields)));
		}
		return map;
	}
	
	public static void addCookie(HttpServletRequest request, HttpServletResponse response, String key, String value, int maxAge) throws UnsupportedEncodingException {
		if(null != value) value = URLEncoder.encode(value, cookieEncoding);
		Cookie cookie = new Cookie(key, value);
		String host = request.getHeader("host");
		if(host.indexOf(":") > -1) {
			host = host.split(":")[0];
		}
		cookie.setDomain(host);
		cookie.setPath("/");
		cookie.setMaxAge(maxAge);
		response.addCookie(cookie);
	}
	
	public static String getCookie(HttpServletRequest request, String key) throws UnsupportedEncodingException {
		Cookie cookies[] = request.getCookies();
		if(null == cookies) return null;
		for(Cookie cookie : cookies) {
			if(key.equals(cookie.getName())) return URLDecoder.decode(cookie.getValue(), cookieEncoding);
		}
		return null;
	}
	
	public static void setSession(HttpServletRequest request, Map<String, Object> map) {
		HttpSession session = request.getSession();
		for(Map.Entry<String, Object> item : map.entrySet()) {
			session.setAttribute(item.getKey(), item.getValue());
		}
	}
	
	public static void setSession(HttpServletRequest request, String key, Object value) {
		HttpSession session = request.getSession();
		session.setAttribute(key, value);
	}
	
	public static Map<String, Object> getSession(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Map<String, Object> map = new HashMap<String, Object>();
		Enumeration<?> e = session.getAttributeNames();
		while(e.hasMoreElements()) {
			String key = (String) e.nextElement();
			map.put(key, session.getAttribute(key));
		}
		return map;
	}
	
	public static Object getSession(HttpServletRequest request, String key) {
		HttpSession session = request.getSession();
		return session.getAttribute(key);
	}
	
	public static Map<String, Object> getSessionMap(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Enumeration<String> enumeration = session.getAttributeNames();
		Map<String, Object> map = new HashMap<String, Object>();
		while (enumeration.hasMoreElements()) {
			String name = enumeration.nextElement().toString();
			map.put(name, session.getAttribute(name));
		}
		return map;
	}
	
	public static void invalidateSession(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
	}
	
	/**
	 * 获取客户端IP地址
	 */
	public static String getRemoteAddr(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}
	
	public static String getWebRoot(HttpServletRequest request) {
		String webRoot = request.getSession().getServletContext().getRealPath("/");
		return webRoot.substring(0, webRoot.length() - 1);
	}
	
	public static String getWebUrl(HttpServletRequest request) {
		StringBuilder sb = new StringBuilder();
		sb.append(request.getScheme())
				.append("://")
				.append(request.getServerName());
		if(80 != request.getServerPort()) {
			sb.append(":").append(request.getServerPort());
		}
		sb.append(request.getContextPath());
		return sb.toString();
	}
	
	public static String getDirectorySeparator(HttpServletRequest request) {
		String webRoot = getWebRoot(request);
		if(webRoot.startsWith("/")) return "/";
		return "\\";
	}
}
