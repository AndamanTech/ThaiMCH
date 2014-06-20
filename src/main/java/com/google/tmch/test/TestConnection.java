package com.google.tmch.test;

import java.util.logging.Level;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.BasicConfigurator;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.google.appengine.api.log.LogQuery;
import com.google.tmch.dao.CountryDao;
import com.google.tmch.dao.impl.CountryDaoImpl;
import com.google.tmch.model.City;

public class TestConnection {
	
		static final	Log log= LogFactory.getLog(TestConnection.class.getName());

	
	public static void main(String agrs[]){
		ApplicationContext context=new ClassPathXmlApplicationContext("tmch-context.xml");
		System.out.println("Donna");
//		BasicConfigurator.configure();
		
		log.debug("sdfsadf");
			
		
		CountryDao countryDao=(CountryDao) context.getBean("CoutryDao");
		try {
			
			for(City coun : countryDao.getCountry()){
				System.out.println(" "+coun);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
