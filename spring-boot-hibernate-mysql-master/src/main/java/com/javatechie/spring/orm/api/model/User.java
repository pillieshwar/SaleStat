package com.javatechie.spring.orm.api.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class User {

	@Id
	@GeneratedValue
	private int user_id;
	private int role_id;
	private String username;
	private String password;
	private int division_id;
	private int state_id;
	private int headquarter_id;
	private int doctor_id;
	private int reporting_to;
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
	public int getReporting_to() {
		return reporting_to;
	}
	public void setReporting_to(int reporting_to) {
		this.reporting_to = reporting_to;
	}
	
	
}
