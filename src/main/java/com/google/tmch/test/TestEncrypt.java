package com.google.tmch.test;

import com.google.tmch.security.PasswordService;

public class TestEncrypt {

	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		PasswordService ps=new PasswordService();
		System.out.println(ps.encrypt("Donna"));
	}

}
