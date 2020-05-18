package com.javatechie.spring.orm.api.dto;

public class GetDoctorMedicineDto {

	private String doctor_name;
	private String medicines;
	
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	public String getMedicines() {
		return medicines;
	}
	public void setMedicines(String medicines) {
		this.medicines = medicines;
	}
	
}
