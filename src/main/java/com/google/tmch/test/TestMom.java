package com.google.tmch.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.google.tmch.dao.MomDao;
import com.google.tmch.model.Mom;

public class TestMom {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		ApplicationContext context=new ClassPathXmlApplicationContext("tmch-context.xml");
		String momfirstname="ดอนน่า";
		String momlastname="มานีกิง";
		String mom_id13="8909900000088";
		String mom_telno="083659784";
		String mom_region="พุธท";
		String mom_occupation="โปรแกรมเมอร์";
		
		Mom mom=new Mom();
		mom.setMom_firstname(momfirstname);
		mom.setMom_lastname(momlastname);
		mom.setMom_id13(mom_id13);
		mom.setMom_telno(mom_telno);
		mom.setMom_religion(mom_region);
		mom.setMom_occupation(mom_occupation);
		
		MomDao momdao=(MomDao) context.getBean("MomDao");
		
		try {
			momdao.saveDataMom(mom);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
