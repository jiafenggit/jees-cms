package com.iisquare.jees.test;

import java.lang.reflect.Modifier;

import com.iisquare.jees.framework.util.DPUtil;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		short sh[] = new short[3];
		Short sh2[] = new Short[3];
		Class<?> shClass = sh.getClass();
		Class<?> sh2Class = sh2.getClass();
		//boolean b = Modifier.isAbstract(shClass.getModifiers());
		System.out.println(Modifier.toString(shClass.getModifiers()));
		System.out.println(Modifier.toString(sh2Class.getModifiers()));
		System.out.println(Modifier.toString(DPUtil.class.getModifiers()));
	}

}
