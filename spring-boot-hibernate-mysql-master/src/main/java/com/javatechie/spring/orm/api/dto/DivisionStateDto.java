package com.javatechie.spring.orm.api.dto;

public class DivisionStateDto {

	private int division_id;
	private String headquarter_name ;
	private int state_id;
	
	
	public int getDivision_id() {
		return division_id;
	}
	public void setDivision_id(int division_id) {
		this.division_id = division_id;
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
