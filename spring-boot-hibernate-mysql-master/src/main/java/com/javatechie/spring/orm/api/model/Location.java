package com.javatechie.spring.orm.api.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity

public class Location {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String state;
	private String region;

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}

	
	
	
}
