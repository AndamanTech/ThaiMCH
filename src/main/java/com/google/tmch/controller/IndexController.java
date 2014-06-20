package com.google.tmch.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.tmch.dao.CountryDao;
import com.google.tmch.model.City;



@Controller
public class IndexController {
	
	private static final Log LOG=LogFactory.getLog(IndexController.class.getName());
	ApplicationContext context=new ClassPathXmlApplicationContext("tmch-context.xml");
	@RequestMapping(value="index",method=RequestMethod.GET)
	public ModelAndView viewjsp(HttpServletRequest req,HttpServletResponse rep){
		LOG.debug("Inside IndexController.viewjsp method");
		/*CountryDao countryDao=(CountryDao) context.getBean("CoutryDao");
		try {
			
			for(City coun : countryDao.getCountry()){
				System.out.println(" "+coun);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		return new ModelAndView("index");
		
	}
}
