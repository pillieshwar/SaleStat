package com.javatechie.spring.orm.api.dto;

public class GetHeadquarterDto {

	private String state_name;
	private String headquarters;
	
	public String getState_name() {
		return state_name;
	}
	public void setState_name(String state_name) {
		this.state_name = state_name;
	}
	public String getHeadquarters() {
		return headquarters;
	}
	public void setHeadquarters(String headquarters) {
		this.headquarters = headquarters;
	}
	
}
