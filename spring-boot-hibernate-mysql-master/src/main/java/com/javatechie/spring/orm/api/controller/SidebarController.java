package com.javatechie.spring.orm.api.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.DashboardDao;
import com.javatechie.spring.orm.api.dao.DoctorDao;
import com.javatechie.spring.orm.api.dao.StateDao;
import com.javatechie.spring.orm.api.dto.GetSidebarAllDoctorsDto;
import com.javatechie.spring.orm.api.model.state;

@Controller
public class SidebarController {

	@Autowired
	private StateDao stateDao;
	
	@Autowired
	private DoctorDao doctorDao;

	@Autowired
	private DashboardDao dashboardDao;
	
	@RequestMapping("/medicine")
	public String medicine() {
		return "medicine";
	}

	@RequestMapping("/all_doctors")
	public ModelAndView allDoctors(Model model, HttpServletRequest request) {

		List<state> stateList = stateDao.getStateList();
		model.addAttribute("stateList", stateList);
		
		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);
		
		List<GetSidebarAllDoctorsDto> sidebarAllDoctorsList = doctorDao.getSidebarAllDoctorsList();
		model.addAttribute("sidebarAllDoctorsLists", sidebarAllDoctorsList);
		
		

		return new ModelAndView("all_doctors");

	}
}
