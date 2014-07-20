package com.google.tmch.dao;

import java.util.List;

import com.google.tmch.model.Child;
import com.google.tmch.model.Child_vaccine;
import com.google.tmch.model.Mom;
import com.google.tmch.model.MomHealthHistory;
import com.google.tmch.model.MomWomb;

public interface MomDao {
	//Mom Data
	public boolean saveDataMom(Mom mom)throws Exception;
	public boolean updateMom(Mom mom)throws Exception;
	
	
	public List<Mom> getlistMom(String limit,String offset)throws Exception;
	public List<Mom> getlistMom()throws Exception;
	public Mom findMomById(String momid)throws Exception;
	public MomHealthHistory getMomHealthHistory(String momid)throws Exception;
	// Mom health history
	public boolean saveMomHealthHistory(MomHealthHistory momhealth)throws Exception;
	public boolean updateMomHealthHistory(MomHealthHistory momhealth)throws Exception;
	
	//Mom Add pregnancy
	public boolean addPregnancy(MomWomb momwomb)throws Exception;
	public List<MomWomb> getMomWomb(String momid)throws Exception;
	public List<Child> getChildList(String momid)throws Exception;
	
	// Add child
	public boolean addChild(Child child,Child_vaccine vaccine)throws Exception;
	
	
}
