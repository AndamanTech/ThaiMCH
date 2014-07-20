package com.google.tmch.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.tmch.dao.MomDao;
import com.google.tmch.jsonobject.JsonMom;
import com.google.tmch.model.Child;
import com.google.tmch.model.Child_vaccine;
import com.google.tmch.model.Mom;
import com.google.tmch.model.MomHealthHistory;
import com.google.tmch.model.MomWomb;
import com.google.tmch.util.DateUtil;
import com.google.tmch.util.GenerateID;


@Controller
public class MomController {
	private static  ApplicationContext context;
	private MomDao momDao;
	@SuppressWarnings("static-access")
	public MomController(){
		this.context=new ClassPathXmlApplicationContext("tmch-context.xml");
		this.momDao=(MomDao) this.context.getBean("MomDao");
	}
	
	
	
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
	@RequestMapping(value="saveMom",method=RequestMethod.POST)
	public ModelAndView saveMom(HttpServletRequest request,HttpServletResponse resposen){
		String momfirstname=request.getParameter("momName");//"ดอนน่า";
		String momlastname=request.getParameter("momLast");//"มานีกิง";
		String mom_id13=request.getParameter("momId13");//"8909900000088";
		String mom_telno=request.getParameter("tel");//"083659784";
		String mom_region=request.getParameter("region");//"พุธท";
		String mom_occupation=request.getParameter("occupation");//"โปรแกรมเมอร์";
		
		String mom_id=GenerateID.randomIdentifier();
		String mom_health_care=GenerateID.randomIdentifier();
		
		Mom mom=new Mom();
		mom.setMom_id(mom_id);
		mom.setMom_firstname(momfirstname);
		mom.setMom_lastname(momlastname);
		mom.setMom_id13(mom_id13);
		mom.setMom_telno(mom_telno);
		mom.setMom_religion(mom_region);
		mom.setMom_occupation(mom_occupation);
		mom.setCrtd_timestamp(DateUtil.getThaiCurrentTime());
		mom.setUpdt_timestamp(DateUtil.getThaiCurrentTime());
		MomDao momdao=(MomDao) context.getBean("MomDao");
		
		MomHealthHistory momhealth=new MomHealthHistory();
		momhealth.setMom_health_history_id(mom_health_care);
		momhealth.setMom_id(mom_id);
		momhealth.setMom_health_crdt_time(DateUtil.getThaiCurrentTime());
		momhealth.setMom_health_updt_time(DateUtil.getThaiCurrentTime());
		try {
		
			momdao.saveMomHealthHistory(momhealth);
			momdao.saveDataMom(mom);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView("redirect:searchMom");
	}
	
	
	@RequestMapping(value="getallmom",method=RequestMethod.GET)//,produces = "application/json")
//	public @ResponseBody String getAllMom(HttpServletRequest req,HttpServletResponse res)throws IOException{
//		String limit=req.getParameter("iDisplayLength");
//		String offset=req.getParameter("iDisplayStart");
	public @ResponseBody String getAllMom()throws IOException{
		List<Mom> listMom=new ArrayList<Mom>();
		try{
//			listMom=momDao.getlistMom(limit,offset);
			listMom=momDao.getlistMom();
		}catch(Exception e){
			e.printStackTrace();
		}
	/*	for(Mom mom : listMom){
			System.out.println(mom.toString());
		}*/
		/*ModelAndView mav=new ModelAndView();
		mav.addObject("aaData",listMom);
		mav.addObject("iTotalRecords", listMom.size());
		mav.addObject("iTotalDisplayRecords", listMom.size());*/
		/*System.out.println("Donna asfasdf");
		Map<String,Object> mav=new HashMap<String, Object>();
		mav.put("aaData",listMom);
		mav.put("iTotalRecords", listMom.size());
		mav.put("iTotalDisplayRecords", listMom.size());
		Gson gson=new GsonBuilder().setPrettyPrinting().create();
		
		String json2=gson.toJson(mav);*/
		
		JsonMom jsonmom=new JsonMom();
		jsonmom.setiTotalDisplayRecords(listMom.size());
		jsonmom.setiTotalDisplayRecords(listMom.size());
		jsonmom.setAaData(listMom);
		
		Gson gson=new GsonBuilder().setPrettyPrinting().create();
		String json2=gson.toJson(jsonmom);
		
		return json2;
	}
	
	@RequestMapping(value="getMomProfile",method=RequestMethod.GET)

	public @ResponseBody Mom  getMomProfile(HttpServletRequest request,HttpServletResponse response){
		String momid=request.getParameter("momid");
		System.out.println("mom id -> "+momid);
		Mom mom=new Mom();
		try {
			mom=momDao.findMomById(momid);

		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
//			mav=null;
//			return mav;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
//			mav=null;
//			return mav;
		}
//		return json2;
//		return mav;
		return mom;
	}
	
	@RequestMapping(value="updatemomprofile",method=RequestMethod.POST)
	public void updateMomProfile(HttpServletRequest request,HttpServletResponse resposne){
		// setting key 
				String momid=request.getParameter("momid");
				// setting  mother data
				String momfname=request.getParameter("momfname");
				String momlname=request.getParameter("momlname");
				String momid13=request.getParameter("momid13");
				String momemail=request.getParameter("emailmom");
				String momtel=request.getParameter("momtel");
				String momoccur=request.getParameter("momoccur");
				String momregion=request.getParameter("momregion");
				
				// setting father data
				String dadfname=request.getParameter("dadfname");
				String dadlname=request.getParameter("dadlname");
				String dadid13=request.getParameter("dadid13");
				String dademail=request.getParameter("dademail");
				String dadtel=request.getParameter("dadtel");
				String dadoccur=request.getParameter("dadoccur");
				String dadregion=request.getParameter("dadregion");
				
				// setting address
				String noaddress=request.getParameter("noaddress");
				String moo=request.getParameter("moo");
				String soi=request.getParameter("soi");
				String road=request.getParameter("road");
				String locality=request.getParameter("locality");
				String distric=request.getParameter("distric");
				String province=request.getParameter("province");
				String zipcode=request.getParameter("zipcode");
				
				Mom mom=new Mom();
				mom.setMom_id(momid);
				mom.setMom_firstname(momfname);
				mom.setMom_lastname(momlname);
				mom.setMom_id13(momid13);
				mom.setMom_occupation(momoccur);
				mom.setMom_religion(momregion);
				mom.setMom_email(momemail);
				mom.setMom_telno(momtel);
				
				mom.setDad_firstname(dadfname);
				mom.setDad_lastname(dadlname);
				mom.setDad_id13(dadid13);
				mom.setDad_email(dademail);
				mom.setDad_occupation(dadoccur);
				mom.setDad_religion(dadregion);
				mom.setDad_telno(dadtel);
				
				mom.setAddress_no(noaddress);
				mom.setAddress_road(road);
				mom.setAddress_soi(soi);
				mom.setAddress_moo(moo);
				mom.setAddress_tumbol(locality);
				mom.setAddress_amphur(distric);
				mom.setAddress_changwat(province);
				mom.setAddress_zipcode(zipcode);
				
				mom.setCrtd_timestamp(DateUtil.getThaiCurrentTime());
				mom.setUpdt_timestamp(DateUtil.getThaiCurrentTime());
				
				try {
					momDao.updateMom(mom);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
	}
	@RequestMapping(value="MomHealthHistory",method=RequestMethod.GET)
	public @ResponseBody MomHealthHistory  getMomHistory(HttpServletRequest request,HttpServletResponse response){
		String momid=request.getParameter("momid");
		System.out.println("mom id -> "+momid);

		MomHealthHistory momhistory=new MomHealthHistory();
		try {
			momhistory=momDao.getMomHealthHistory(momid);
			System.out.println("Mom history Data: "+momhistory.toString());

		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return momhistory;
	}
	@RequestMapping(value="updateMomhistory" , method=RequestMethod.POST)
	public void updateHealthProfile(HttpServletRequest request,HttpServletResponse response){
		String momhistory_id=request.getParameter("momhistory_id");
//		String mombirth=request.getParameter("mombirth");
		String weight =request.getParameter("weight");
		String height =request.getParameter("height");
		String contraception = request.getParameter("contraception");//การคุมกำเนิด
		String surgicalHistory=request.getParameter("surgicalHistory");// การผ่าตัด
		String allergicHistory=request.getParameter("allergicHistory");//การแพ้ยา
		String physicalHealth=request.getParameter("physicalHealth");// การเจ็บป่วย
		
		MomHealthHistory momhealth=new MomHealthHistory();
		momhealth.setMom_health_history_id(momhistory_id);
		momhealth.setMom_weight(weight);
		momhealth.setMom_height(height);
		momhealth.setMom_contraception(contraception);
		momhealth.setMom_surgical_history(surgicalHistory);
		momhealth.setMom_allergic_history(allergicHistory);
		momhealth.setMom_physical_health(physicalHealth);
		momhealth.setMom_health_updt_time(DateUtil.getThaiCurrentTime());
		
//		System.out.println("Mom health history : "+momhealth.toString());
		try {
			if(momDao.updateMomHealthHistory(momhealth)){
				System.out.println("Success!");
			}else{
				System.out.println("Failed!");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping(value="getMomWomb",method=RequestMethod.GET)
	public @ResponseBody List<MomWomb> getMomWomb(HttpServletRequest request,HttpServletResponse response) throws NumberFormatException{
		List<MomWomb> listMomWomb=new ArrayList<MomWomb>();
		String momid=request.getParameter("momid");
		System.out.println("mom id -> "+momid);
		
		try {
			listMomWomb=momDao.getMomWomb(momid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listMomWomb;
	}
	
	@RequestMapping(value="getChildList",method=RequestMethod.GET)
	public @ResponseBody List<Child> getChildList(HttpServletRequest request,HttpServletResponse response) throws NumberFormatException{
		List<Child> childlist=new ArrayList<Child>();
		String momid=request.getParameter("momid");
		System.out.println("mom id -> "+momid);
		
		try {
			childlist=momDao.getChildList(momid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return childlist;
	}
	
	@RequestMapping(value="addPregnancy",method=RequestMethod.POST)
	public void addPreganancy(HttpServletRequest request,HttpServletResponse response){
		String momid=request.getParameter("momid");
		String preorder=request.getParameter("pregorder");
		String child_birth=request.getParameter("childbirth");
		String wieght_before_preg=request.getParameter("weightbfpreg");
		String amountCesarean = request.getParameter("amountCesarean");
		String mom_womb_history_id=GenerateID.randomIdentifier();
		String crtd_time=DateUtil.getThaiCurrentTime();
		String updt_time=DateUtil.getThaiCurrentTime();
		
		MomWomb momwomb=new MomWomb();
		momwomb.setMom_id(momid);
		momwomb.setMom_womb_order(preorder);
		momwomb.setMom_predit_be_born(child_birth);
		momwomb.setMom_weight_before_womb(Double.valueOf(wieght_before_preg));
		momwomb.setMom_operated_on_womb(amountCesarean);
		momwomb.setMom_womb_history_id(mom_womb_history_id);
		momwomb.setMom_womb_crtd_time(crtd_time);
		momwomb.setMom_womb_updt_time(updt_time);
		try {
			momDao.addPregnancy(momwomb);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		
	}
	
	@RequestMapping(value="addchild",method=RequestMethod.POST)
	public void addChild(HttpServletRequest request,HttpServletResponse response){
		String momid=request.getParameter("momid");
		String child_id=GenerateID.randomIdentifier();
		String child_order=request.getParameter("childorder");
		String child_firstname=request.getParameter("fname");
		String child_lastname=request.getParameter("lname");
		String child_birthday=request.getParameter("childbirth");
		String child_gender=request.getParameter("genderList");
		String child_weight=request.getParameter("f_weight");
		String child_lengthofBody=request.getParameter("lengthOfBody");
		String child_lengofHead=request.getParameter("lengOfHead");
		String child_crtd_time=DateUtil.getThaiCurrentTime();
		String child_udt_time=DateUtil.getThaiCurrentTime();
		
		Child child=new Child();
		child.setChild_id(child_id);
		child.setMom_id(momid);
		child.setChild_order(child_order);
		child.setChild_firstname(child_firstname);
		child.setChild_lastname(child_lastname);
		child.setChild_birthday(child_birthday);
		child.setChild_gender(child_gender);
		child.setChild_weight(Double.valueOf(child_weight));
		child.setChild_height(Double.valueOf(child_lengthofBody));
		child.setChild_length_of_head(Double.valueOf(child_lengofHead));
		child.setChild_crtd_time(child_crtd_time);
		child.setChild_uptd_time(child_udt_time);
		
		Child_vaccine vaccine =new Child_vaccine();
		vaccine.setChild_vaccine_id(GenerateID.randomIdentifier());
		vaccine.setChild_id(child_id);
		vaccine.setCrt_time(DateUtil.getThaiCurrentTime());
		vaccine.setUpdt_time(DateUtil.getThaiCurrentTime());
		System.out.println(child.toString());
		try {
			momDao.addChild(child,vaccine);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
