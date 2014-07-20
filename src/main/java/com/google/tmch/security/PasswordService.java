package com.google.tmch.security;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.codec.binary.Base64;



public final class PasswordService {
	private static PasswordService instance;
	public PasswordService(){
		
	}
	public synchronized String encrypt(String plaintext)throws Exception{
		MessageDigest md=null;
		try{
			md = MessageDigest.getInstance("SHA");
			
		}catch(NoSuchAlgorithmException e){
			throw new Exception(e.getMessage());
		}
		
		try{
			md.update(plaintext.getBytes("UTF-8"));
		}catch(UnsupportedEncodingException e){
			throw new Exception(e.getMessage());
		}
		
		byte raw[] = md.digest();
		String hash=(new Base64().encodeToString(raw));
		return hash;
	}
	
	public static synchronized PasswordService getInstance(){
		if(instance == null){
			instance = new PasswordService();
		}
		return instance;
	}
}
