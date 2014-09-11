package com.iisquare.jees.framework.util;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import net.sf.json.JSONObject;

/**
 * 
 * DataProcess数据处理类
 *
 */
public class DPUtil {
	
	public static final String regexDouble = "^-?\\d+(\\.\\d)*";
	
	/**
	 * null false "" 0 "0" 返回true
	 */
	public static boolean empty(Object object) {
		if(null == object) return true;
		if(object instanceof Boolean) {
			return !(Boolean) object;
		}
		if(object instanceof Set) {
			return ((Set<?>) object).isEmpty();
		}
		if(object instanceof Map) {
			return ((Map<?, ?>) object).isEmpty();
		}
		if(object.getClass().isArray()) {
			return 0 == Array.getLength(object);
		}
		String str = object.toString();
		if(str.length() < 1) return true;
		if("0".equals(str)) return true;
		return false;
	}
	
	/**
	 * MD5加密字符串
	 * @param str
	 * @return 大写32位字符串
	 */
	public static String MD5(String str) {
		try {
			StringBuilder sb = new StringBuilder(32);
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] array = md.digest(str.getBytes("UTF-8"));
			for (int i = 0; i < array.length; i++) {
				sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100)
						.toUpperCase().substring(1, 3));
			}
			return sb.toString();
		} catch (Exception e) {
			return null;
		}
	}
	
	/**
	 * 获取随机整数字符串，最长为16位
	 * @param length
	 * @return
	 */
	public static String random(int length) {
		if(length > 16) length = 16;
		String str = Math.random() + "";
		return str.substring(str.length() - length);
	}
	
	/**
	 * 毫秒转换为格式化日期
	 * @param millis 毫秒
	 * @param format 格式
	 * @return
	 */
	public static String millisToDateTime(long millis, String format) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(format);
		return dateFormat.format(new Date(millis));
	}
	
	/**
	 * 格式化日期转换为毫秒
	 * @param dateTime 日期
	 * @param format 格式
	 * @return
	 */
	public static long dateTimeToMillis(String dateTime, String format) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(format);
		try {
			return dateFormat.parse(dateTime).getTime();
		} catch (ParseException e) {
			return -1;
		}
	}
	
	/**
	 * 获取当前日期
	 * @param format 日期格式
	 * @return
	 */
	public static String getCurrentDateTime(String format) {
		return millisToDateTime(System.currentTimeMillis(), format);
	}
	
	/**
	 * 获取当前秒数
	 * @return
	 */
	public static int getCurrentSeconds() {
		String str = System.currentTimeMillis() + "";
		str = str.substring(0, 10);
		return parseInt(str);
	}
	
	/**
	 * 转换为int类型
	 * @param object
	 * @return
	 */
	public static int parseInt(Object object) {
		return (int) parseDouble(object);
	}
	
	/**
	 * 转换为long类型
	 * @param object
	 * @return
	 */
	public static long parseLong(Object object) {
		return (long) parseDouble(object);
	}
	
	/**
	 * 转换为double类型
	 * @param object
	 * @return
	 */
	public static double parseDouble(Object object) {
		if(null == object) return 0.0;
		String str = object.toString();
		if("".equals(str)) return 0.0;
		str = getFirstMatcher(regexDouble, str);
		return Double.parseDouble(str);
	}
	
	/**
	 * 转换为float类型
	 * @param object
	 * @return
	 */
	public static float parseFloat(Object object) {
		if(null == object) return 0.0f;
		String str = object.toString();
		if("".equals(str)) return 0.0f;
		str = getFirstMatcher(regexDouble, str);
		return Float.parseFloat(str);
	}
	
	/**
	 * 转换为String类型
	 */
	public static String parseString(Object object) {
		if(null == object) return "";
		return object.toString();
	}
	
	/**
	 * 比较两个对象是否相等
	 */
	public static boolean equals(Object object1, Object object2) {
		if(null == object1) {
			if(null == object2) return true;
		} else {
			return object1.equals(object2);
		}
		return false;
	}
	
	public static List<String> getMatcher(String regex, String str) {
		return getMatcher(regex, str, true);
	}
	
	/**
	 * 获取正则匹配字符串
	 * @param regex 正则表达式
	 * @param str 匹配字符串
	 * @param bGroup 将捕获组作为结果返回
	 * @return
	 */
	public static List<String> getMatcher(String regex, String str, boolean bGroup) {
		List<String> list = new ArrayList<String>();
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(str);
		while(matcher.find()) {
			if(bGroup) {
				for(int i = 0; i < matcher.groupCount(); i++) {
					list.add(matcher.group(i));
				}
			} else {
				list.add(matcher.group());
			}
		}
		return list;
	}
	
	/**
	 * 获取第一个匹配的字符串
	 * @param regex
	 * @param str
	 * @return
	 */
	public static String getFirstMatcher(String regex, String str) {
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(str);
		while(matcher.find()) {
			return matcher.group();
		}
		return null;
	}
	
	public static String trim(String str) {
		return trim(str, " ");
	}
	
	/**
	 * 去除字符串两边的指定字符
	 * @param str 源字符串
	 * @param trimStr 需要去除的字符
	 * @return
	 */
	public static String trim(String str, String trimStr) {
		if(empty(str)) return "";
		String regexLeft = "^(" + trimStr + ")*";
		str = str.replaceFirst(regexLeft, "");
		String regexRight = "(" + trimStr + ")*$";
		str = str.replaceFirst(regexRight, "");
		return str;
	}
	
	public static String trimLeft(String str) {
		return trimLeft(str, "");
	}
	
	/**
	 * 去除字符串左边的指定字符
	 * @param str
	 * @param trimStr
	 * @return
	 */
	public static String trimLeft(String str, String trimStr) {
		if(empty(str)) return "";
		String regexLeft = "^(" + trimStr + ")*";
		str = str.replaceFirst(regexLeft, "");
		return str;
	}
	
	public static String trimRight(String str) {
		return trimRight(str, "");
	}
	
	/**
	 * 去除字符串右边的指定字符
	 * @param str
	 * @param trimStr
	 * @return
	 */
	public static String trimRight(String str, String trimStr) {
		if(empty(str)) return "";
		String regexRight = "(" + trimStr + ")*$";
		str = str.replaceFirst(regexRight, "");
		return str;
	}
	
	/**
	 * 采用指定表达式分隔字符串
	 * @param string 带分割字符串
	 * @param splitRegex 表达式
	 * @param trimStr 对子项进行trim操作
	 * @return 分隔后的字符串数组
	 */
	public static String[] explode(String string, String splitRegex, String trimStr) {
		List<String> list = new ArrayList<String>(0);
		if(DPUtil.empty(string)) {
			return new String[]{};
		}
		for (String str : string.split(splitRegex)) {
			if(!DPUtil.empty(str)) {
				if(null != trimStr) {
					list.add(DPUtil.trim(str));
				} else {
					list.add(str);
				}
			}
		}
		return DPUtil.collectionToStringArray(list);
	}
	
	/**
	 * 采用指定表达式分隔字符串
	 * @param string 带分割字符串
	 * @param splitRegex 表达式
	 * @return 分隔后的字符串数组
	 */
	public static String[] explode(String string, String splitRegex) {
		List<String> list = new ArrayList<String>(0);
		if(DPUtil.empty(string)) {
			return new String[]{};
		}
		for (String str : string.split(splitRegex)) {
			list.add(str);
		}
		return DPUtil.collectionToStringArray(list);
	}
	
	/**
	 * 将String数组转换为ArrayList
	 * @param stringArray
	 * @return
	 */
	public static ArrayList<String> stringArrayToList(String[] stringArray) {
		if(null == stringArray) return new ArrayList<String>(0);
		return new ArrayList<String>(Arrays.asList(stringArray));
	}
	
	/**
	 * 将ArrayList转换为String数组
	 */
	public static String[] collectionToStringArray(Collection<?> list) {
		return (String[]) collectionToArray(list);
	}
	
	/**
	 * 将ArrayList转换为Object数组
	 */
	public static Object[] collectionToArray(Collection<?> list) {
		if(null == list) {
			return new Object[]{};
		}
		Object[] objectArray = new Object[list.size()];
		list.toArray(objectArray);
		return objectArray;
	}
	
	/**
	 * 将String数组转换为Integer数组
	 * @param stringArray
	 * @return
	 */
	public static Integer[] objectArrayToIntegerArray(Object[] objectArray) {
		Integer[] intArray = new Integer[objectArray.length];
		for(int i = 0; i < objectArray.length; i++) {
			intArray[i] = DPUtil.parseInt(objectArray[i]);
		}
		return intArray;
	}
	
	/**
	 * 采用指定字符拼接List
	 * @param split
	 * @param list
	 * @return
	 */
	public static String implode(String split, List<?> list) {
		return implode(split, list, "", "");
	}
	
	/**
	 * 采用指定字符拼接List
	 * @param split
	 * @param list
	 * @param prefix 增加前缀
	 * @param subffix 增加后缀
	 * @return
	 */
	public static String implode(String split, List<?> list, String prefix, String subffix) {
		StringBuilder sb = new StringBuilder();
		if(null == list) return "";
		int size = list.size();
		if(1 > size) return "";
		for(int i = 0; i < size; i++) {
			Object value = list.get(i);
			if(null == value) continue;
			if(value instanceof List) {
				sb.append(implode(split, (List<?>)value));
			} else if(value instanceof Map) {
				sb.append(implode(split, (Map<?, ?>)value));
			} else {
				sb.append(prefix).append(value).append(subffix);
			}
			if(i + 1 < size) sb.append(split);
		}
		return sb.toString();
	}
	
	/**
	 * 采用指定字符拼接Set
	 * @param split
	 * @param list
	 * @return
	 */
	public static String implode(String split, Set<?> set) {
		return implode(split, set, "", "");
	}
	
	/**
	 * 采用指定字符拼接Set
	 * @param split
	 * @param list
	 * @param prefix 增加前缀
	 * @param subffix 增加后缀
	 * @return
	 */
	public static String implode(String split, Set<?> set, String prefix, String subffix) {
		StringBuilder sb = new StringBuilder();
		if(null == set) return "";
		if(1 > set.size()) return "";
		Iterator<?> item = set.iterator();
		boolean hasNext = item.hasNext();
		while(hasNext) {
			Object value = item.next();
			if(null == value) continue;
			if(value instanceof List) {
				sb.append(implode(split, (List<?>)value));
			} else if(value instanceof Map) {
				sb.append(implode(split, (Map<?, ?>)value));
			} else {
				sb.append(prefix).append(value).append(subffix);
			}
			hasNext = item.hasNext();
			if(hasNext) sb.append(split);
		}
		return sb.toString();
	}
	
	/**
	 * 采用指定字符拼接Map
	 * @param split
	 * @param map
	 * @return
	 */
	public static String implode(String split, Map<?, ?> map) {
		return implode(split, map, "", "");
	}
	
	/**
	 * 采用指定字符拼接Map
	 * @param split
	 * @param map
	 * @param prefix 增加前缀
	 * @param subffix 增加后缀
	 * @return
	 */
	public static String implode(String split, Map<?, ?> map, String prefix, String subffix) {
		StringBuilder sb = new StringBuilder();
		Set<?> set = map.keySet();
		int i = 1, size = set.size();
		for(Object key : set) {
			if(null == key) continue;
			Object value = map.get(key);
			if(null == value) continue;
			if(value instanceof List) {
				sb.append(implode(split, (List<?>)value));
			} else if(value instanceof Map) {
				sb.append(implode(split, (Map<?, ?>)value));
			} else {
				sb.append(prefix).append(value).append(subffix);
			}
			if(i++ < size) sb.append(split);
		}
		return sb.toString();
	}
	
	public static String makeIds(Object[] ids) {
		return makeIds(ids, ",");
	}
	
	/**
	 * 获取以指定字符分割的ID字符串
	 * @param ids
	 * @param divide
	 * @return
	 */
	public static String makeIds(Object[] ids, String divide) {
		List<Integer> list = new ArrayList<Integer>(0);
		for(Object id : ids) {
			list.add(parseInt(id));
		}
		return implode(divide, list);
	}
	
	public static String makeIds(Object ids) {
		return makeIds(ids, ",");
	}
	
	/**
	 * 获取以指定字符分割的ID字符串
	 * @param ids 源分割字符串
	 * @param divide 分割字符
	 * @return
	 */
	public static String makeIds(Object ids, String divide) {
		if(empty(ids)) return "";
		String[] idArray = ids.toString().split(divide);
		List<Integer> list = new ArrayList<Integer>(0);
		for(String id : idArray) {
			list.add(parseInt(id));
		}
		return implode(divide, list);
	}
	
	/**
	 * 将以指定字符分割的ID字符串，生成采用其它字符包裹的ID字符串
	 * 如1,2,3,4以,分割；采用#包裹输出的结果为#1##2##3##4#
	 * @param ids 源分割字符串
	 * @param divide 分割字符
	 * @param wrap 包裹字符
	 * @return
	 */
	public static String makeIds(Object ids, String divide, String wrap) {
		if(empty(ids)) return "";
		String[] idArray = ids.toString().split(divide);
		StringBuilder sb = new StringBuilder();
		for(String id : idArray) {
			sb.append(wrap + parseInt(id) +  wrap);
		}
		return sb.toString();
	}
	
	/**
	 * 将以指定字符包裹的ID字符串，生成采用其它字符分割的ID字符串
	 * 如#1##2##3##4#以#包裹；采用,分割输出的结果为1,2,3,4；是makeIds的逆操作
	 */
	public static String unWrapIds(Object ids, String divide, String wrap) {
		if(empty(ids)) return "";
		return trim(ids.toString(), wrap).replaceAll(wrap + wrap, divide);
	}
	
	/**
	 * 深度复制对象信息
	 * @param object 要复制的对象
	 * @return
	 */
	public static Object clone(Object object) {
		return JSONObject.fromObject(JSONObject.fromObject(object).toString());
	}
	
	/**
	 * 深度复制Bean信息
	 * @param object 要复制的Bean对象
	 * @param beanClass 要转换成的Bean对象类名
	 * @return
	 */
	public static Object clone(Object object, Class<?> beanClass) {
		return JSONObject.toBean((JSONObject) clone(object), beanClass);
	}
	
	/**
	 * 将List转换为Set
	 * @param <T>
	 * @param list List集合
	 * @return Set集合
	 */
	public static <T> Set<T> listToSet(List<T> list) {
		Set<T> set = new HashSet<T>(0);
		set.addAll(list);
		return set;
	}
	
	/**
	 * 将Set转换为List
	 * @param <T>
	 * @param set Set集合
	 * @return List集合
	 */
	public static <T> List<T> setToList(Set<T> set) {
		List<T> list = new ArrayList<T>(0);
		list.addAll(set);
		return list;
	}
	
	/**
	 * 将字符串首字母小写
	 * @param str 带转换字符串
	 * @return 首字母小写后的字符串
	 */
	public static String lowerCaseFirst(String str) {
		return str.substring(0, 1).toLowerCase() + str.substring(1);
	}
	
	/**
	 * 将大写字母转换为下划线加小写字母的形式
	 * @param 源字符串
	 * @return 转换后的字符串
	 */
	public static String addUnderscores(String name) {
		StringBuilder buf = new StringBuilder( name.replace('.', '_') );
		for (int i=1; i<buf.length() - 1; i++) {
			if (
				Character.isLowerCase( buf.charAt(i-1) ) &&
				Character.isUpperCase( buf.charAt(i) ) &&
				Character.isLowerCase( buf.charAt(i+1) )
			) {
				buf.insert(i++, '_');
			}
		}
		return buf.toString().toLowerCase();
	}
	
	/**
	 * 判断下标是否在数组范围内
	 */
	public static boolean isInArray(Object[] objects, int index) {
		if(null == objects) return false;
		if(index < 0) return false;
		return objects.length >= index;
	}
	
	/**
	 * 安全获取数组中对应下标的值
	 */
	public static Object getByIndex(Object[] objects, int index) {
		if(isInArray(objects, index)) return objects[index];
		return null;
	}
	
	/**
	 * 判断下标是否在列表范围内
	 */
	public static boolean isInArray(List<?> list, int index) {
		if(null == list) return false;
		if(index < 0) return false;
		return list.size() >= index;
	}
	
	/**
	 * 安全获取列表中对应下标的值
	 */
	public static Object getByIndex(List<?> list, int index) {
		if(isInArray(list, index)) return list.get(index);
		return null;
	}
	
	/**
	 * 将实体对象转化为Map
	 * @param object 对象实例
	 */
	public static Map<String, Object> convertEntityToMap(Object object, boolean bUnderscores) {
		Class<?> instance = object.getClass();
		Field[] field = instance.getDeclaredFields();
		try {
			int length = field.length;
			Map<String, Object> map = new HashMap<String, Object>(DPUtil.parseInt(length / 0.75f));
			for (int i = 0; i < length; i++) {
				String name = field[i].getName();
				name = name.substring(0, 1).toUpperCase() + name.substring(1);
				Method method = instance.getMethod("get" + name);
				Object value = method.invoke(object);
				if(bUnderscores) name = addUnderscores(name);
				map.put(name, value);
			}
			return map;
		} catch (Exception e) {
			return null;
		}
	}
	
	public static List<Map<String, Object>> formatRelation(List<Map<String, Object>> list, Object root) {
		return formatRelation(list, "id", "parent_id", "children", root);
	}
	
	/**
	 * 格式化层级关系
	 */
	public static List<Map<String, Object>> formatRelation(List<Map<String, Object>> list,
			String primaryKey, String parentKey, String childrenKey, Object root) {
		Map<Object, List<Map<String, Object>>> parentMap = new HashMap<Object, List<Map<String, Object>>>();
		for (Map<String, Object> item : list) {
			Object parentValue = item.get(parentKey);
			List<Map<String, Object>> listSub = parentMap.get(parentValue);
			if(null == listSub) {
				listSub = new ArrayList<Map<String, Object>>();
			}
			listSub.add(item);
			parentMap.put(parentValue, listSub);
		}
		return processFormatRelation(parentMap, primaryKey, childrenKey, root);
	}
	
	private static List<Map<String, Object>> processFormatRelation(
			Map<Object, List<Map<String, Object>>> parentMap, String primaryKey, String childrenKey, Object root) {
		List<Map<String, Object>> list = parentMap.get(root);
		if(null == list) {
			return new ArrayList<Map<String, Object>>();
		}
		for(Map<String, Object> map : list) {
			map.put(childrenKey, processFormatRelation(parentMap, primaryKey, childrenKey, map.get(primaryKey)));
		}
		return list;
	}
}
