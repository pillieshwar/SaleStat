package com.javatechie.spring.orm.api.dto;

public class StateDoctorBusinessDto {

	private int doctor_id;
	private String doctor_name;
	private String start_date;
	private String end_date;
	private float expected_sale;
	private float generated_sale;
	
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
	public float getExpected_sale() {
		return expected_sale;
	}
	public void setExpected_sale(float expected_sale) {
		this.expected_sale = expected_sale;
	}
	public float getGenerated_sale() {
		return generated_sale;
	}
	public void setGenerated_sale(float generated_sale) {
		this.generated_sale = generated_sale;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	
	
}
