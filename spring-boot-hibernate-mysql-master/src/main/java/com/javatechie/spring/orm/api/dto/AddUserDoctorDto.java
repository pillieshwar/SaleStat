package com.javatechie.spring.orm.api.dto;

import java.util.List;

public class AddUserDoctorDto {

	private int user_id;
	private List selected;
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public List getSelected() {
		return selected;
	}
	public void setSelected(List selected) {
		this.selected = selected;
	}
		
}
