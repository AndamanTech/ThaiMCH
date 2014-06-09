package com.google.tmch.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MomController {
	
	@RequestMapping(value="searchMom",method=RequestMethod.GET)
	public ModelAndView searchMomPage(HttpServletRequest req,HttpServletResponse res){
		return new ModelAndView("searchMom");
	}
	
	@RequestMapping(value="momProfile",method=RequestMethod.GET)
	public ModelAndView momProfilePage(HttpServletRequest req,HttpServletResponse res){
		return new ModelAndView("momProfile");
	}
	
	@RequestMapping(value="momHealth",method=RequestMethod.GET)
	public ModelAndView momHealthPage(HttpServletRequest req,HttpServletResponse res){
		return new ModelAndView("momHealth");
	}
	
	@RequestMapping(value="momHistory",method=RequestMethod.GET)
	public ModelAndView momHistoryPage(HttpServletRequest req,HttpServletResponse res){
		return new ModelAndView("momHistory");
	}
	
	@RequestMapping(value="childList",method=RequestMethod.GET)
	public ModelAndView childListPage(HttpServletRequest req,HttpServletResponse res){
		return new ModelAndView("childList");
	}
	
}
