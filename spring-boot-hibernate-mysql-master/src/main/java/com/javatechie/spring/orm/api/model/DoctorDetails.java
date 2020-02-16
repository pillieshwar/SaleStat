package com.javatechie.spring.orm.api.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity

public class DoctorDetails {
	@Id
	@GeneratedValue
	private int id;
	private String doctor_name;
	private String mr_name;
	private String mr_hq;
	private String asm_name;
	private String region;
	private String division;
	private String mode_of_disbursement;
	private String month;
	private String amount;
	private String sponsorship;
	private String avg_per_month_business;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	public String getMr_name() {
		return mr_name;
	}
	public void setMr_name(String mr_name) {
		this.mr_name = mr_name;
	}
	public String getMr_hq() {
		return mr_hq;
	}
	public void setMr_hq(String mr_hq) {
		this.mr_hq = mr_hq;
	}
	public String getAsm_name() {
		return asm_name;
	}
	public void setAsm_name(String asm_name) {
		this.asm_name = asm_name;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getMode_of_disbursement() {
		return mode_of_disbursement;
	}
	public void setMode_of_disbursement(String mode_of_disbursement) {
		this.mode_of_disbursement = mode_of_disbursement;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getSponsorship() {
		return sponsorship;
	}
	public void setSponsorship(String sponsorship) {
		this.sponsorship = sponsorship;
	}
	public String getAvg_per_month_business() {
		return avg_per_month_business;
	}
	public void setAvg_per_month_business(String avg_per_month_business) {
		this.avg_per_month_business = avg_per_month_business;
	}
	
	
}

	