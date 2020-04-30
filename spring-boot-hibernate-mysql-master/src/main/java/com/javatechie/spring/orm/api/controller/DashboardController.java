package com.javatechie.spring.orm.api.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.DashboardDao;
import com.javatechie.spring.orm.api.dao.LocationDao;
import com.javatechie.spring.orm.api.dto.LocationDto;
import com.javatechie.spring.orm.api.model.state;

@Controller
public class DashboardController {

	@Autowired
	private LocationDao locationDao;

	@Autowired
	private DashboardDao dashboardDao;

	@RequestMapping("/dashboard")
	public ModelAndView dashboard(Model model, HttpServletRequest request) {
		List<LocationDto> location = locationDao.getAllLocations();
		model.addAttribute("location", location);
        String state_sessionid =  (String) request.getSession().getAttribute("state_sessionid");
        int state = Integer.parseInt(state_sessionid);
		List<state> stateDropdownList = dashboardDao.stateDropdown1(state);
		model.addAttribute("stateDropdownList", stateDropdownList);
		return new ModelAndView("dashboard");
	}


	@RequestMapping(value = "/state_dropdown_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<state> stateDropdown(@RequestBody state statedropdownjson, Model model) {
		System.out.println("inside ");
		List<state> stateDropdownList = dashboardDao.stateDropdown(statedropdownjson);
		model.addAttribute("stateDropdownList", stateDropdownList);
		return stateDropdownList;
	}
}
