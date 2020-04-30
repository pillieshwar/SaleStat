package com.javatechie.spring.orm.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.StateDao;
import com.javatechie.spring.orm.api.model.state;

@Controller
public class SidebarController {

	@Autowired
	private StateDao stateDao;

	@RequestMapping("/medicine")
	public String medicine() {
		return "medicine";
	}

	@RequestMapping("/all_doctors")
	public ModelAndView allDoctors(Model model) {
		/*
		 * List<LocationDto> location = locationDao.getAllLocations();
		 * model.addAttribute("location",location);
		 */

		List<state> stateList = stateDao.getStateList();
		model.addAttribute("stateList", stateList);

		return new ModelAndView("all_doctors");

	}
}
