package com.google.tmch.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.tmch.jsonobject.PersonJsonObject;
import com.google.tmch.model.Person;

@Controller
public class TestPage {

	 @RequestMapping(value = "helloWorld", method = 
		        RequestMethod.GET)
		    public String printWelcome(@ModelAttribute("person") Person person,
		        BindingResult result,ModelMap model, HttpServletRequest 
		        request, HttpServletResponse response) {
		    
		    return "testpage";

		    }

		    @RequestMapping(value = "/springPaginationDataTables.web", 
		        method = RequestMethod.GET, produces = 
		        "application/json")
		    public @ResponseBody String springPaginationDataTables() 
		        throws IOException {

		    List<Person> personsList = new ArrayList<Person>();
		    for (int i = 0; i < 1; i++) {
		        Person person2 = new Person();
		            person2.setName("John Landy");
		            person2.setPosition("หกดหกด");
		            person2.setSalary("$320,800");
		            person2.setOffice("NY");
		            person2.setPhone("999999999");
		            person2.setStart_date("05/05/2010");
		            personsList.add(person2);  
		            
		            person2 = new Person();
		            person2.setName("Igor Vornovitsky");
		            person2.setPosition("Solution Architect");
		            person2.setSalary("$340,800");
		            person2.setOffice("NY");
		            person2.setPhone("987897899");
		            person2.setStart_date("05/05/2010");
		            personsList.add(person2); 
		            
		            person2 = new Person();
		            person2.setName("Java Honk");
		            person2.setPosition("Architect");
		            person2.setSalary("$380,800");
		            person2.setOffice("NY");
		            person2.setPhone("1234567890");
		            person2.setStart_date("05/05/2010");
		            personsList.add(person2); 
		            
		            person2 = new Person();
		            person2.setName("Ramesh Arrepu");
		            person2.setPosition("Sr. Architect");
		            person2.setSalary("$310,800");
		            person2.setOffice("NY");
		            person2.setPhone("4654321234");
		            person2.setStart_date("05/05/2010");
		            personsList.add(person2); 
		            
		            person2 = new Person();
		            person2.setName("Bob Sidebottom");
		            person2.setPosition("Architect");
		            person2.setSalary("$300,800");
		            person2.setOffice("NJ");
		            person2.setPhone("9876543212");
		            person2.setStart_date("05/05/2010");
		            personsList.add(person2); 

		    }
		    
		    for (int i = 0; i < 50; i++) {
		        Person person2 = new Person();
		            person2.setName("Zuke Torres");
		            person2.setPosition("System Architect");
		            person2.setSalary("$320,800");
		            person2.setOffice("NY");
		            person2.setPhone("999999999");
		            person2.setStart_date("05/05/2010");
		            personsList.add(person2);  
		    }
		    
		    PersonJsonObject personJsonObject = new PersonJsonObject();
		    personJsonObject.setiTotalDisplayRecords(personsList.size());
		    personJsonObject.setiTotalRecords(personsList.size());
		    personJsonObject.setAaData(personsList);
		    
		    Gson gson = new GsonBuilder().setPrettyPrinting().create();
		    String json2 = gson.toJson(personJsonObject);

		    return json2;
		    }
}
