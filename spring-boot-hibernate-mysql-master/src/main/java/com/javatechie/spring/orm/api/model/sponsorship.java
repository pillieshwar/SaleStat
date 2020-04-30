package com.javatechie.spring.orm.api.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class sponsorship {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sponsorship_id;
	private String sponsorship_nature ;
	public int getSponsorship_id() {
		return sponsorship_id;
	}
	public void setSponsorship_id(int sponsorship_id) {
		this.sponsorship_id = sponsorship_id;
	}
	public String getSponsorship_nature() {
		return sponsorship_nature;
	}
	public void setSponsorship_nature(String sponsorship_nature) {
		this.sponsorship_nature = sponsorship_nature;
	}
	
	
}
