package com.google.tmch.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestExtjs {
	@RequestMapping(value="include-ext",method=RequestMethod.GET)
	public ModelAndView TestExtjsPage(HttpServletRequest request,HttpServletResponse response){
		return new ModelAndView("include-ext");
	}
}
