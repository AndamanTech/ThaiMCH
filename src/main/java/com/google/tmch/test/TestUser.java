package com.google.tmch.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.google.tmch.dao.UserDao;
import com.google.tmch.model.User;

public class TestUser {
	public static void main(String arg[]){
		System.out.println("Hello world");
		ApplicationContext context=new ClassPathXmlApplicationContext("tmch-context.xml");
		
		UserDao userdao=(UserDao) context.getBean("UserDao");
		
		try {
			for(User user: userdao.findAllUser()){
				System.out.println("User : " + user.toString());
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
