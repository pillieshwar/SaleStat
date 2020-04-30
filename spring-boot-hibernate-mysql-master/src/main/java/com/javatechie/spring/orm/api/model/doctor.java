package com.javatechie.spring.orm.api.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class doctor {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int doctor_id;
	private String doctor_name;
	private String doctor_speciality;
	private int division_state_id;
	private String doctor_qualification;
	private String doctor_ph;
	private String doctor_address;
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
	public String getDoctor_speciality() {
		return doctor_speciality;
	}
	public void setDoctor_speciality(String doctor_speciality) {
		this.doctor_speciality = doctor_speciality;
	}
	public int getDivision_state_id() {
		return division_state_id;
	}
	public void setDivision_state_id(int division_state_id) {
		this.division_state_id = division_state_id;
	}
	public String getDoctor_qualification() {
		return doctor_qualification;
	}
	public void setDoctor_qualification(String doctor_qualification) {
		this.doctor_qualification = doctor_qualification;
	}
	public String getDoctor_ph() {
		return doctor_ph;
	}
	public void setDoctor_ph(String doctor_ph) {
		this.doctor_ph = doctor_ph;
	}
	public String getDoctor_address() {
		return doctor_address;
	}
	public void setDoctor_address(String doctor_address) {
		this.doctor_address = doctor_address;
	}
	
	
}
