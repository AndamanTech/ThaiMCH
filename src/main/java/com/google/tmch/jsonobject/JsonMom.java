package com.google.tmch.jsonobject;

import java.util.List;

import com.google.tmch.model.Mom;

public class JsonMom {
	int iTotalRecords;

    int iTotalDisplayRecords;

    String sEcho;

    String sColumns;
    
    List<Mom> aaData;

	public int getiTotalRecords() {
		return iTotalRecords;
	}

	public void setiTotalRecords(int iTotalRecords) {
		this.iTotalRecords = iTotalRecords;
	}

	public int getiTotalDisplayRecords() {
		return iTotalDisplayRecords;
	}

	public void setiTotalDisplayRecords(int iTotalDisplayRecords) {
		this.iTotalDisplayRecords = iTotalDisplayRecords;
	}

	public String getsEcho() {
		return sEcho;
	}

	public void setsEcho(String sEcho) {
		this.sEcho = sEcho;
	}

	public String getsColumns() {
		return sColumns;
	}

	public void setsColumns(String sColumns) {
		this.sColumns = sColumns;
	}

	public List<Mom> getAaData() {
		return aaData;
	}

	public void setAaData(List<Mom> aaData) {
		this.aaData = aaData;
	}
    
    
    
}
