package com.google.tmch.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/*import com.google.tmch.dao.impl.OrganizationDaoImpl;
import com.google.tmch.model.Organization;*/



@Controller
public class OrganizationController {
/*	
	OrganizationDaoImpl orgdao ;
	
	public OrganizationController() throws Exception {
		orgdao = new OrganizationDaoImpl();
	}*/
	
	@RequestMapping(value="searchOrg",method=RequestMethod.GET)
	public ModelAndView searchOrgPage(HttpServletRequest req,HttpServletResponse res){
		return new ModelAndView("searchOrg");
	}
	
	@RequestMapping(value="addOrg",method=RequestMethod.GET)
	public ModelAndView addOrgPage(HttpServletRequest req,HttpServletResponse res){
		return new ModelAndView("addOrg");
	}
	
/*	@RequestMapping(value = "searchOrgRes", method = RequestMethod.POST)
	public @ResponseBody  List<Organization> listOrg(@RequestParam("term") String orgname, HttpServletRequest request)
			throws Exception {
//		String orgName = request.getParameter("orgName");
		OrganizationDaoImpl daoImpl = new OrganizationDaoImpl();
		List<Organization> listOrg=new ArrayList<Organization>();
		if(orgname.equals("") || orgname ==""){
			listOrg=daoImpl.getListOrg();
		}else{
			listOrg = daoImpl.findOrgByName(orgname);
		}
		 
		// model.addAttribute(listOrg);
		return listOrg;
	}*/
	
	/**
	 *  save Organization Model
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
/*	@RequestMapping(value = "addOrg", method = RequestMethod.POST)
	public ModelAndView saveOrg(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

			Organization org = new Organization();
			// don't have Organization
			String orgType = request.getParameter("orgType");
			String nameOrg = request.getParameter("nameOrg");
			String noAddress = request.getParameter("noAddress");
			String roadName = request.getParameter("roadName");
			String tumbon = request.getParameter("Locality");
			String distric = request.getParameter("district");
			String province = request.getParameter("province");
			String postcode = request.getParameter("postcode");
			String tel=request.getParameter("tel");
			// set data
			org.setOrgType(orgType);
			org.setNameOrg(nameOrg);
			org.setNoAddress(noAddress);
			org.setRoadName(roadName);
			org.setTumbon(tumbon);
			org.setDistric(distric);
			org.setProvince(province);
			org.setPostcode(postcode);
			org.setTel(tel);
			orgdao.saveOrg(org);
		return new ModelAndView("redirect:/tmch/newSearchOrg");
	}*/
}
