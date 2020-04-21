package com.javatechie.spring.orm.api.dto;

public class GetAllDoctorsDto {

	private int doctor_id;
	private String doctor_name;
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	
	
}
