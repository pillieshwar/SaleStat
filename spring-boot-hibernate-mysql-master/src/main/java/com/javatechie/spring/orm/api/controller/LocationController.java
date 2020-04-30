package com.javatechie.spring.orm.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.javatechie.spring.orm.api.dao.LocationDao;
import com.javatechie.spring.orm.api.dto.LocationDto;

@RestController
//@RequestMapping("/spring-boot-orm")
public class LocationController {

	@Autowired 
	private LocationDao dao;

	@GetMapping("/getAllLocations")
	public List<LocationDto> getAllLocations() {
		System.out.println(dao.getAllLocations().listIterator());
		return dao.getAllLocations();
	}
}
