package com.google.tmch.dao;

import com.google.tmch.model.Child;
import com.google.tmch.model.Child_vaccine;

public interface ChildDao {
	
	public Child findChildById(String childid)throws Exception;
	public Child_vaccine getChild_vaccine(String child_id)throws Exception;
	public boolean updateChildProfile(Child child)throws Exception;
	public boolean updateChildVaccine(Child_vaccine vaccine)throws Exception;
}
