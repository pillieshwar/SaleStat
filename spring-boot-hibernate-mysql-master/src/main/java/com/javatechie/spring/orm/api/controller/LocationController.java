package com.javatechie.spring.orm.api.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.javatechie.spring.orm.api.dao.LocationDao;
import com.javatechie.spring.orm.api.dto.LocationDto;
import com.javatechie.spring.orm.api.model.Location;

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
