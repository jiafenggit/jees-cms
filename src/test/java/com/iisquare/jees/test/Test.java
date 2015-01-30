package com.iisquare.jees.test;

import java.io.File;
import java.io.FileInputStream;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Long timeStart = System.currentTimeMillis();
		String filePath = "C:/Users/Ouyang/Desktop/380000.html";
		File file = new File(filePath);
		Long fileLength = file.length(); // 获取文件长度
		byte[] fileContent = new byte[fileLength.intValue()];
		FileInputStream inputStream = null;
		try {
			inputStream = new FileInputStream(file);
			inputStream.read(fileContent);
			inputStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		Long endStart = System.currentTimeMillis();
		System.out.println(timeStart);
		System.out.println(endStart);
		System.out.println(endStart - timeStart);
		timeStart = System.currentTimeMillis();
		new String(fileContent);
		endStart = System.currentTimeMillis();
		System.out.println(timeStart);
		System.out.println(endStart);
		System.out.println(endStart - timeStart);
	}

}
