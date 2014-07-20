package com.google.tmch.model;

import java.io.Serializable;

public class Child implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String child_id;
	private String mom_id;
	private String child_order;
	private String child_firstname;
	private String child_lastname;
	private String child_blood;
	private String child_id13;
	private String child_region;
	private String child_gender;
	private String child_birthday;
	private double child_weight;
	private double child_height;
	private double child_length_of_head;
	private String child_false_born;
	private String child_health_born;
	private String child_crtd_time;
	private String child_uptd_time;
	
	public String getChild_id() {
		return child_id;
	}

	public void setChild_id(String child_id) {
		this.child_id = child_id;
	}

	public String getMom_id() {
		return mom_id;
	}

	public void setMom_id(String mom_id) {
		this.mom_id = mom_id;
	}

	public String getChild_order() {
		return child_order;
	}

	public void setChild_order(String child_order) {
		this.child_order = child_order;
	}

	public String getChild_firstname() {
		return child_firstname;
	}

	public void setChild_firstname(String child_firstname) {
		this.child_firstname = child_firstname;
	}

	public String getChild_lastname() {
		return child_lastname;
	}

	public void setChild_lastname(String child_lastname) {
		this.child_lastname = child_lastname;
	}

	public String getChild_blood() {
		return child_blood;
	}

	public void setChild_blood(String child_blood) {
		this.child_blood = child_blood;
	}

	public String getChild_id13() {
		return child_id13;
	}

	public void setChild_id13(String child_id13) {
		this.child_id13 = child_id13;
	}

	public String getChild_region() {
		return child_region;
	}

	public void setChild_region(String child_region) {
		this.child_region = child_region;
	}

	public String getChild_gender() {
		return child_gender;
	}

	public void setChild_gender(String child_gender) {
		this.child_gender = child_gender;
	}

	public String getChild_birthday() {
		return child_birthday;
	}

	public void setChild_birthday(String child_birthday) {
		this.child_birthday = child_birthday;
	}

	public double getChild_weight() {
		return child_weight;
	}

	public void setChild_weight(double child_weight) {
		this.child_weight = child_weight;
	}

	public double getChild_height() {
		return child_height;
	}

	public void setChild_height(double child_height) {
		this.child_height = child_height;
	}

	public double getChild_length_of_head() {
		return child_length_of_head;
	}

	public void setChild_length_of_head(double child_length_of_head) {
		this.child_length_of_head = child_length_of_head;
	}

	public String getChild_false_born() {
		return child_false_born;
	}

	public void setChild_false_born(String child_false_born) {
		this.child_false_born = child_false_born;
	}

	public String getChild_health_born() {
		return child_health_born;
	}

	public void setChild_health_born(String child_health_born) {
		this.child_health_born = child_health_born;
	}

	public String getChild_crtd_time() {
		return child_crtd_time;
	}

	public void setChild_crtd_time(String child_crtd_time) {
		this.child_crtd_time = child_crtd_time;
	}

	public String getChild_uptd_time() {
		return child_uptd_time;
	}

	public void setChild_uptd_time(String child_uptd_time) {
		this.child_uptd_time = child_uptd_time;
	}

	@Override
	public String toString() {
		return "Child [child_id=" + child_id + ", mom_id=" + mom_id
				+ ", child_order=" + child_order + ", child_firstname="
				+ child_firstname + ", child_lastname=" + child_lastname
				+ ", child_blood=" + child_blood + ", child_id13=" + child_id13
				+ ", child_region=" + child_region + ", child_gender="
				+ child_gender + ", child_birthday=" + child_birthday
				+ ", child_weight=" + child_weight + ", child_height="
				+ child_height + ", child_length_of_head="
				+ child_length_of_head + ", child_false_born="
				+ child_false_born + ", child_health_born=" + child_health_born
				+ ", child_crtd_time=" + child_crtd_time + ", child_uptd_time="
				+ child_uptd_time + "]";
	}
	
	
}
