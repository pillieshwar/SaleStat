package com.javatechie.spring.orm.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.LocationDao;
import com.javatechie.spring.orm.api.dto.LocationDto;

@Controller
public class DashboardController {
	
	@Autowired
	private LocationDao locationDao;
	
	@RequestMapping("/dashboard")
    public ModelAndView dashboard(Model model) {
		List<LocationDto> location = locationDao.getAllLocations();
		model.addAttribute("location",location);
		return new ModelAndView("dashboard");
    }

}
