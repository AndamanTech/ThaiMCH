package com.google.tmch.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ChildController {
	
	@RequestMapping(value="childprofilepage",method=RequestMethod.GET)
	public ModelAndView childProfilePage(HttpServletRequest req,HttpServletResponse res){
		return new ModelAndView("childProfile");
	}
	
	@RequestMapping(value="childpactv",method=RequestMethod.GET)
	public ModelAndView childActvPage(HttpServletRequest req,HttpServletResponse res){
		return new ModelAndView("childActv");
	}
	
	@RequestMapping(value="childvaccine",method=RequestMethod.GET)
	public ModelAndView childVaccinePage(HttpServletRequest req,HttpServletResponse res){
		return new ModelAndView("childVaccine");
	}
}
