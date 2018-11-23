package com.imin.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import com.sun.org.apache.xml.internal.security.utils.Base64;

public class MD5Util {

	private static String salt = "bd1902b311ef84b0c24ef40e66f60816";
	
	public static String md5(String password){
		try {
			//得到MD5的算法器
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] bytes = md.digest((password+salt).getBytes());
//			String string = new String(bytes);
//			System.out.println(string);// ,�b�Y[�K-#Kp
			return Base64.encode(bytes);
			//System.out.println(pwdStr);//ICy5YqxZB1uWSwcVLSNLcA==
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args) {
		md5("123");
	}
}
