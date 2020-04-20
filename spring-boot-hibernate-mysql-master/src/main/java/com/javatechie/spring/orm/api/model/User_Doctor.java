package com.javatechie.spring.orm.api.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User_Doctor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_doctor_id;
	private int user_id;
	private int doctor_id;
	public int getUser_doctor_id() {
		return user_doctor_id;
	}
	public void setUser_doctor_id(int user_doctor_id) {
		this.user_doctor_id = user_doctor_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
	
	
}
