package com.google.tmch.model;

import java.io.Serializable;

public class Mom implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String mom_id; //1
	private String mom_firstname;//2
	private String mom_lastname;//3
	private String mom_id13;//4
	private String mom_telno;//5
	private String mom_email;//6
	private String mom_religion;//7
	private String mom_occupation;//8
	private String dad_firstname;//9
	private String dad_lastname;//10
	private String dad_id13;//11
	private String dad_telno;//12
	private String dad_email;//13
	private String dad_religion;//14
	private String dad_occupation;//15
	private String address_no;//16
	private String address_soi;//17
	private String address_road;//18
	private String address_moo;//19
	private String address_tumbol;//20
	private String address_amphur;//21
	private String address_changwat;//22
	private String address_zipcode;//23
	private String crtd_timestamp;//24
	private String updt_timestamp;//25
	public String getMom_id() {
		return mom_id;
	}
	public void setMom_id(String mom_id) {
		this.mom_id = mom_id;
	}
	public String getMom_firstname() {
		return mom_firstname;
	}
	public void setMom_firstname(String mom_firstname) {
		this.mom_firstname = mom_firstname;
	}
	public String getMom_lastname() {
		return mom_lastname;
	}
	public void setMom_lastname(String mom_lastname) {
		this.mom_lastname = mom_lastname;
	}
	public String getMom_id13() {
		return mom_id13;
	}
	public void setMom_id13(String mom_id13) {
		this.mom_id13 = mom_id13;
	}
	public String getMom_telno() {
		return mom_telno;
	}
	public void setMom_telno(String mom_telno) {
		this.mom_telno = mom_telno;
	}
	public String getMom_email() {
		return mom_email;
	}
	public void setMom_email(String mom_email) {
		this.mom_email = mom_email;
	}
	public String getMom_religion() {
		return mom_religion;
	}
	public void setMom_religion(String mom_religion) {
		this.mom_religion = mom_religion;
	}
	public String getMom_occupation() {
		return mom_occupation;
	}
	public void setMom_occupation(String mom_occupation) {
		this.mom_occupation = mom_occupation;
	}
	public String getDad_firstname() {
		return dad_firstname;
	}
	public void setDad_firstname(String dad_firstname) {
		this.dad_firstname = dad_firstname;
	}
	public String getDad_lastname() {
		return dad_lastname;
	}
	public void setDad_lastname(String dad_lastname) {
		this.dad_lastname = dad_lastname;
	}
	public String getDad_id13() {
		return dad_id13;
	}
	public void setDad_id13(String dad_id13) {
		this.dad_id13 = dad_id13;
	}
	public String getDad_telno() {
		return dad_telno;
	}
	public void setDad_telno(String dad_telno) {
		this.dad_telno = dad_telno;
	}
	public String getDad_email() {
		return dad_email;
	}
	public void setDad_email(String dad_email) {
		this.dad_email = dad_email;
	}
	public String getDad_religion() {
		return dad_religion;
	}
	public void setDad_religion(String dad_religion) {
		this.dad_religion = dad_religion;
	}
	public String getDad_occupation() {
		return dad_occupation;
	}
	public void setDad_occupation(String dad_occupation) {
		this.dad_occupation = dad_occupation;
	}
	public String getCrtd_timestamp() {
		return crtd_timestamp;
	}
	public void setCrtd_timestamp(String crtd_timestamp) {
		this.crtd_timestamp = crtd_timestamp;
	}
	public String getAddress_no() {
		return address_no;
	}
	public void setAddress_no(String address_no) {
		this.address_no = address_no;
	}
	public String getAddress_soi() {
		return address_soi;
	}
	public void setAddress_soi(String address_soi) {
		this.address_soi = address_soi;
	}
	public String getAddress_tumbol() {
		return address_tumbol;
	}
	public void setAddress_tumbol(String address_tumbol) {
		this.address_tumbol = address_tumbol;
	}
	public String getAddress_amphur() {
		return address_amphur;
	}
	public void setAddress_amphur(String address_amphur) {
		this.address_amphur = address_amphur;
	}
	public String getAddress_changwat() {
		return address_changwat;
	}
	public void setAddress_changwat(String address_changwat) {
		this.address_changwat = address_changwat;
	}
	public String getAddress_zipcode() {
		return address_zipcode;
	}
	public void setAddress_zipcode(String address_zipcode) {
		this.address_zipcode = address_zipcode;
	}
	public String getAddress_road() {
		return address_road;
	}
	public void setAddress_road(String address_road) {
		this.address_road = address_road;
	}
	public String getUpdt_timestamp() {
		return updt_timestamp;
	}
	public void setUpdt_timestamp(String updt_timestamp) {
		this.updt_timestamp = updt_timestamp;
	}
	public String getAddress_moo() {
		return address_moo;
	}
	public void setAddress_moo(String address_moo) {
		this.address_moo = address_moo;
	}
	@Override
	public String toString() {
		return "Mom [mom_id=" + mom_id + ", mom_firstname=" + mom_firstname
				+ ", mom_lastname=" + mom_lastname + ", mom_id13=" + mom_id13
				+ ", mom_telno=" + mom_telno + ", mom_email=" + mom_email
				+ ", mom_religion=" + mom_religion + ", mom_occupation="
				+ mom_occupation + ", dad_firstname=" + dad_firstname
				+ ", dad_lastname=" + dad_lastname + ", dad_id13=" + dad_id13
				+ ", dad_telno=" + dad_telno + ", dad_email=" + dad_email
				+ ", dad_religion=" + dad_religion + ", dad_occupation="
				+ dad_occupation + ", address_no=" + address_no
				+ ", address_soi=" + address_soi + ", address_road="
				+ address_road + ", address_moo=" + address_moo
				+ ", address_tumbol=" + address_tumbol + ", address_amphur="
				+ address_amphur + ", address_changwat=" + address_changwat
				+ ", address_zipcode=" + address_zipcode + ", crtd_timestamp="
				+ crtd_timestamp + ", updt_timestamp=" + updt_timestamp + "]";
	}
	
	
}
