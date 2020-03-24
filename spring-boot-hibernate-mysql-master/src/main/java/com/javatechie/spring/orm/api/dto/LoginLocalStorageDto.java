package com.javatechie.spring.orm.api.dto;

public class LoginLocalStorageDto {
	
	private String username;
	
	private int division_id;
	
	private int state_id;
	
	private int headquarter_id;
	
	private int role_id;
	
	private String role_abbr;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getDivision_id() {
		return division_id;
	}

	public void setDivision_id(int division_id) {
		this.division_id = division_id;
	}

	public int getState_id() {
		return state_id;
	}

	public void setState_id(int state_id) {
		this.state_id = state_id;
	}

	public int getHeadquarter_id() {
		return headquarter_id;
	}

	public void setHeadquarter_id(int headquarter_id) {
		this.headquarter_id = headquarter_id;
	}

	public int getRole_id() {
		return role_id;
	}

	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}

	public String getRole_abbr() {
		return role_abbr;
	}

	public void setRole_abbr(String role_abbr) {
		this.role_abbr = role_abbr;
	}
	
	
	
}
