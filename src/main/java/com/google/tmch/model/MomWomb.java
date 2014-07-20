package com.google.tmch.model;

import java.io.Serializable;

public class MomWomb implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String mom_womb_history_id;
	private String mom_id;
	private String mom_womb_order;
	private String mom_predit_be_born;
	private double mom_weight_before_womb;
	private String  mom_operated_on_womb;
	private String mom_womb_crtd_time;
	private String mom_womb_updt_time;
	public String getMom_womb_history_id() {
		return mom_womb_history_id;
	}
	public void setMom_womb_history_id(String mom_womb_history_id) {
		this.mom_womb_history_id = mom_womb_history_id;
	}
	public String getMom_id() {
		return mom_id;
	}
	public void setMom_id(String mom_id) {
		this.mom_id = mom_id;
	}
	public String getMom_womb_order() {
		return mom_womb_order;
	}
	public void setMom_womb_order(String mom_womb_order) {
		this.mom_womb_order = mom_womb_order;
	}
	public String getMom_predit_be_born() {
		return mom_predit_be_born;
	}
	public void setMom_predit_be_born(String mom_predit_be_born) {
		this.mom_predit_be_born = mom_predit_be_born;
	}
	public double getMom_weight_before_womb() {
		return mom_weight_before_womb;
	}
	public void setMom_weight_before_womb(double mom_weight_before_womb) {
		this.mom_weight_before_womb = mom_weight_before_womb;
	}
	public String getMom_operated_on_womb() {
		return mom_operated_on_womb;
	}
	public void setMom_operated_on_womb(String mom_operated_on_womb) {
		this.mom_operated_on_womb = mom_operated_on_womb;
	}
	public String getMom_womb_crtd_time() {
		return mom_womb_crtd_time;
	}
	public void setMom_womb_crtd_time(String mom_womb_crtd_time) {
		this.mom_womb_crtd_time = mom_womb_crtd_time;
	}
	public String getMom_womb_updt_time() {
		return mom_womb_updt_time;
	}
	public void setMom_womb_updt_time(String mom_womb_updt_time) {
		this.mom_womb_updt_time = mom_womb_updt_time;
	}
	@Override
	public String toString() {
		return "MomWomb [mom_womb_history_id=" + mom_womb_history_id
				+ ", mom_id=" + mom_id + ", mom_womb_order=" + mom_womb_order
				+ ", mom_predit_be_born=" + mom_predit_be_born
				+ ", mom_weight_before_womb=" + mom_weight_before_womb
				+ ", mom_operated_on_womb=" + mom_operated_on_womb
				+ ", mom_womb_crtd_time=" + mom_womb_crtd_time
				+ ", mom_womb_updt_time=" + mom_womb_updt_time + "]";
	}
	
	
}
