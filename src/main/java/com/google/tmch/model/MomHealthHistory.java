package com.google.tmch.model;

import java.io.Serializable;

public class MomHealthHistory implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String mom_health_history_id;
	private String mom_id;
	private String mom_birthday;
	private String mom_weight;
	private String mom_height;
	private String mom_contraception;
	private String mom_surgical_history;
	private String mom_allergic_history;
	private String mom_physical_health;
	private String mom_health_crdt_time;
	private String mom_health_updt_time;
	
	public String getMom_weight() {
		return mom_weight;
	}
	public void setMom_weight(String mom_weight) {
		this.mom_weight = mom_weight;
	}
	public String getMom_height() {
		return mom_height;
	}
	public void setMom_height(String mom_height) {
		this.mom_height = mom_height;
	}
	public String getMom_contraception() {
		return mom_contraception;
	}
	public void setMom_contraception(String mom_contraception) {
		this.mom_contraception = mom_contraception;
	}
	public String getMom_surgical_history() {
		return mom_surgical_history;
	}
	public void setMom_surgical_history(String mom_surgical_history) {
		this.mom_surgical_history = mom_surgical_history;
	}
	public String getMom_allergic_history() {
		return mom_allergic_history;
	}
	public void setMom_allergic_history(String mom_allergic_history) {
		this.mom_allergic_history = mom_allergic_history;
	}
	public String getMom_physical_health() {
		return mom_physical_health;
	}
	public void setMom_physical_health(String mom_physical_health) {
		this.mom_physical_health = mom_physical_health;
	}

	public String getMom_birthday() {
		return mom_birthday;
	}
	public void setMom_birthday(String mom_birthday) {
		this.mom_birthday = mom_birthday;
	}
	public String getMom_health_crdt_time() {
		return mom_health_crdt_time;
	}
	public void setMom_health_crdt_time(String mom_health_crdt_time) {
		this.mom_health_crdt_time = mom_health_crdt_time;
	}
	public String getMom_health_updt_time() {
		return mom_health_updt_time;
	}
	public void setMom_health_updt_time(String mom_health_updt_time) {
		this.mom_health_updt_time = mom_health_updt_time;
	}
	@Override
	public String toString() {
		return "MomHealthHistory [mom_health_history_id="
				+ mom_health_history_id + ", mom_id=" + mom_id
				+ ", mom_birthday=" + mom_birthday + ", mom_weight="
				+ mom_weight + ", mom_height=" + mom_height
				+ ", mom_contraception=" + mom_contraception
				+ ", mom_surgical_history=" + mom_surgical_history
				+ ", mom_allergic_history=" + mom_allergic_history
				+ ", mom_physical_health=" + mom_physical_health
				+ ", mom_health_crdt_time=" + mom_health_crdt_time
				+ ", mom_health_updt_time=" + mom_health_updt_time + "]";
	}
	public String getMom_health_history_id() {
		return mom_health_history_id;
	}
	public void setMom_health_history_id(String mom_health_history_id) {
		this.mom_health_history_id = mom_health_history_id;
	}
	public String getMom_id() {
		return mom_id;
	}
	public void setMom_id(String mom_id) {
		this.mom_id = mom_id;
	}

	
	
}
