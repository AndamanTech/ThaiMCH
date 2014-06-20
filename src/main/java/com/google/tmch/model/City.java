package com.google.tmch.model;

import java.io.Serializable;

public class City implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int ID;
	private String Name;
	private String CountryCode;
	private String District;
	private String Population;
	
	
	
	
	public int getId() {
		return ID;
	}
	public void setId(int id) {
		this.ID = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		this.Name = name;
	}
	public String getCountryCode() {
		return CountryCode;
	}
	public void setCountryCode(String countryCode) {
		CountryCode = countryCode;
	}
	public String getDistrict() {
		return District;
	}
	public void setDistrict(String district) {
		District = district;
	}
	public String getPopulation() {
		return Population;
	}
	public void setPopulation(String population) {
		this.Population = population;
	}
	@Override
	public String toString() {
		return "City [ID=" + ID + ", name=" + Name + ", CountryCode="
				+ CountryCode + ", District=" + District + ", population="
				+ Population + "]";
	}
	
	
}
