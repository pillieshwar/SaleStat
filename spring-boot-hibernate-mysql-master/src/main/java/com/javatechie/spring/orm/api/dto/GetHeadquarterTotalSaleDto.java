package com.javatechie.spring.orm.api.dto;

public class GetHeadquarterTotalSaleDto {

	private int headquarter_id;
	private String headquarter_name;
	private float headquarter_total_sale;
	private String start_date;
	private String end_date;
	private int doctor_count;
	
	public int getHeadquarter_id() {
		return headquarter_id;
	}
	public void setHeadquarter_id(int headquarter_id) {
		this.headquarter_id = headquarter_id;
	}
	public String getHeadquarter_name() {
		return headquarter_name;
	}
	public void setHeadquarter_name(String headquarter_name) {
		this.headquarter_name = headquarter_name;
	}
	public float getHeadquarter_total_sale() {
		return headquarter_total_sale;
	}
	public void setHeadquarter_total_sale(float headquarter_total_sale) {
		this.headquarter_total_sale = headquarter_total_sale;
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
	public int getDoctor_count() {
		return doctor_count;
	}
	public void setDoctor_count(int doctor_count) {
		this.doctor_count = doctor_count;
	}
	
	
}
