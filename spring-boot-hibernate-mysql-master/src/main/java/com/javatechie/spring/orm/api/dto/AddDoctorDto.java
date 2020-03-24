package com.javatechie.spring.orm.api.dto;

public class AddDoctorDto {

	private String doctor_name;
	private String doctor_speciality;
	private int division_id;
	private int state_id;
	private int headquarter_id;
	private String doctor_qualification;
	private String phone_number;
	private String address;
	
	
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	public String getDoctor_speciality() {
		return doctor_speciality;
	}
	public void setDoctor_speciality(String doctor_speciality) {
		this.doctor_speciality = doctor_speciality;
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
	public String getDoctor_qualification() {
		return doctor_qualification;
	}
	public void setDoctor_qualification(String doctor_qualification) {
		this.doctor_qualification = doctor_qualification;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

}
