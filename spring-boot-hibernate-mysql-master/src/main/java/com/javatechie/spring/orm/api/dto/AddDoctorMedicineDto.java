package com.javatechie.spring.orm.api.dto;

import java.util.List;

public class AddDoctorMedicineDto {

	private int doctor_id;
	private List selected;
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
	public List getSelected() {
		return selected;
	}
	public void setSelected(List selected) {
		this.selected = selected;
	}
	
	
}
