package com.google.tmch.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.tmch.dao.ChildDao;
import com.google.tmch.model.Child;
import com.google.tmch.model.Child_vaccine;
import com.google.tmch.util.DateUtil;


@Controller
public class ChildController {
	
	private ChildDao childdao;
	private ApplicationContext context;
	public ChildController(){
		this.context=new ClassPathXmlApplicationContext("tmch-context.xml");
		this.childdao=(ChildDao) this.context.getBean("ChildDao");
		
	}
	@RequestMapping(value="searchchild",method=RequestMethod.GET)
	public ModelAndView searchMomPage(HttpServletRequest req,HttpServletResponse res){
		return new ModelAndView("searchChild");
	}
	
	
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
	@RequestMapping(value="getChildProfile",method=RequestMethod.GET)
	public @ResponseBody Child  getChildProfile(HttpServletRequest request,HttpServletResponse response){
		String childid=request.getParameter("childid");
		System.out.println("mom id -> "+childid);

		Child child=new Child();
		try {
			child=childdao.findChildById(childid);
			System.out.println("Mom history Data: "+child.toString());

		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return child;
	}
	
	@RequestMapping(value="updatechildprofile",method=RequestMethod.POST)
	public void updatechildprofile(HttpServletRequest request,HttpServletResponse response){
		String childid=request.getParameter("childid");
		String child_fname=request.getParameter("childname");
		String child_lname=request.getParameter("childlname");
		String child_id13=request.getParameter("childid13");
		String child_birthday=request.getParameter("childbirth");
		String child_gender=request.getParameter("gender");
		String child_fweight =request.getParameter("fweight");
		String child_lengthofbody=request.getParameter("lengthofbody");
		String child_lengthofHead=request.getParameter("lengthofhead");
		String child_falsemessage=request.getParameter("falmessage");
		String child_healthfirst=request.getParameter("healthfirsts");
		String child_blood=request.getParameter("blood");
		String child_region=request.getParameter("region");
		String child_updt_time=DateUtil.getThaiCurrentTime();
		
		Child child=new Child();
		child.setChild_id(childid);//1
		child.setChild_firstname(child_fname);//2
		child.setChild_lastname(child_lname);//3
		child.setChild_id13(child_id13);//4
		child.setChild_birthday(child_birthday);//5
		child.setChild_gender(child_gender);//6
		child.setChild_height(Double.valueOf(child_lengthofbody));//7
		child.setChild_weight(Double.valueOf(child_fweight));//8
		child.setChild_length_of_head(Double.valueOf(child_lengthofHead));//9
		child.setChild_false_born(child_falsemessage);//10
		child.setChild_health_born(child_healthfirst);//11
		child.setChild_blood(child_blood);//12
		child.setChild_region(child_region);//13
		child.setChild_uptd_time(child_updt_time);//14
		
		try {
			childdao.updateChildProfile(child);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	@RequestMapping(value="updatevaccine",method=RequestMethod.POST)
	public void updateChildVaccine(HttpServletRequest request,HttpServletResponse response){
		String child_vaccine=request.getParameter("child_vaccine_id");
		String bcg1=request.getParameter("bcg1");
		String hb1=request.getParameter("hb1");
		String hb2=request.getParameter("hb2");
		String opv1=request.getParameter("opv1");
		String opv2=request.getParameter("opv2");
		String opv3=request.getParameter("opv3");
		String opv4=request.getParameter("opv4");
		String opv5=request.getParameter("opv5");
		String mmr1=request.getParameter("mmr1");
		String mmr2=request.getParameter("mmr2");
		String je1=request.getParameter("je1");
		String je2=request.getParameter("je2");
		String je3=request.getParameter("je3");
		String dt1=request.getParameter("dt1");
		String udt_time=DateUtil.getThaiCurrentTime();
		
		Child_vaccine vaccine=new Child_vaccine();
		vaccine.setBcg1(bcg1);
		vaccine.setHb_vac_1(hb1);
		vaccine.setChild_id(child_vaccine);
		vaccine.setHb_vac_2(hb2);
		vaccine.setOpv_vac_1(opv1);
		vaccine.setOpv_vac_2(opv2);
		vaccine.setOpv_vac_3(opv3);
		vaccine.setOpv_vac_4(opv4);
		vaccine.setOpv_vac_5(opv5);
		vaccine.setMmr_vac_1(mmr1);
		vaccine.setMmr_vac_2(mmr2);
		vaccine.setJe_vac_1(je1);
		vaccine.setJe_vac_2(je2);
		vaccine.setJe_vac_3(je3);
		vaccine.setDt_1(dt1);
		vaccine.setUpdt_time(udt_time);
		
		try {
			childdao.updateChildVaccine(vaccine);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	@RequestMapping(value="getvaccinebychildid",method=RequestMethod.POST)
	public @ResponseBody Child_vaccine getChild_vaccine_by_child_id(HttpServletRequest request,HttpServletResponse response){
		String child_id=request.getParameter("childid");
		Child_vaccine child_vaccine=new Child_vaccine();
		try {
			child_vaccine=childdao.getChild_vaccine(child_id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return child_vaccine;
	}
}
