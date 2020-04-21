package com.javatechie.spring.orm.api.dto;

public class GetAllMedicinesDto {

	private int medicine_id;
	private String medicine_name;
	public int getMedicine_id() {
		return medicine_id;
	}
	public void setMedicine_id(int medicine_id) {
		this.medicine_id = medicine_id;
	}
	public String getMedicine_name() {
		return medicine_name;
	}
	public void setMedicine_name(String medicine_name) {
		this.medicine_name = medicine_name;
	}
	
	
}
