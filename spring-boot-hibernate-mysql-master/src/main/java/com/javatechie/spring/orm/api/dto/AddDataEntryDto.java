package com.javatechie.spring.orm.api.dto;

public class AddDataEntryDto {

	private int doctor_id;
	private int medicine_id;
	private float medicine_pieces;
	private float medicine_amount;
	private String month;
	private String year;
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
	
	public int getMedicine_id() {
		return medicine_id;
	}
	public void setMedicine_id(int medicine_id) {
		this.medicine_id = medicine_id;
	}
	public float getMedicine_pieces() {
		return medicine_pieces;
	}
	public void setMedicine_pieces(float medicine_pieces) {
		this.medicine_pieces = medicine_pieces;
	}
	public float getMedicine_amount() {
		return medicine_amount;
	}
	public void setMedicine_amount(float medicine_amount) {
		this.medicine_amount = medicine_amount;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	
	
}
