package com.javatechie.spring.orm.api.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Headquarter {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int headquarter_id;
	private String headquarter_name ;
	private int state_id;
	public int getHeadquarter_id() {
		return headquarter_id;
	}
	public void setHeadquarter_id(int headquarter_id) {
		this.headquarter_id = headquarter_id;
	}
	public String getHeadquarter_name() {
		return headquarter_name;
	}
	public void setHeadquarter_name(String headquarter_name) {
		this.headquarter_name = headquarter_name;
	}
	public int getState_id() {
		return state_id;
	}
	public void setState_id(int state_id) {
		this.state_id = state_id;
	}
	
	

}