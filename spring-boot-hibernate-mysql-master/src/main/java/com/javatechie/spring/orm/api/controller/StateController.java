package com.javatechie.spring.orm.api.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javatechie.spring.orm.api.dao.DashboardDao;
import com.javatechie.spring.orm.api.dao.HeadquarterDao;
import com.javatechie.spring.orm.api.dao.StateDao;
import com.javatechie.spring.orm.api.dto.HeadquarterListDto;
import com.javatechie.spring.orm.api.model.state;

@Controller
public class StateController {

	@Autowired
	private HeadquarterDao headquarterDao;

	@Autowired
	private StateDao stateDao;

	@Autowired
	private DashboardDao dashboardDao;

	/*
	 * @RequestMapping("/state_sales") public ModelAndView stateSales(Model model,
	 * HttpServletRequest request) { int int_state_sessionid = (Integer)
	 * request.getSession().getAttribute("int_state_sessionid"); List<state>
	 * stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
	 * model.addAttribute("stateDropdownList", stateDropdownList); return new
	 * ModelAndView("state_sales"); }
	 */

	@GetMapping("/state_sales")
	public String stateSalesMonth(@RequestParam("state") String state, Model model, HttpServletRequest request) {
		System.out.println("state---->" + state);
		List<state> stateList = stateDao.getStateList();
		model.addAttribute("stateList", stateList);

		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);

		String headquarter_sessionid = (String) request.getSession().getAttribute("headquarter_sessionid");
		System.out.println("headquarter_sessionid : " + headquarter_sessionid);
		int headquarterId = Integer.parseInt(headquarter_sessionid);
		List<HeadquarterListDto> headquarterList = headquarterDao.headquarterList(state, headquarterId);
		model.addAttribute("headquarterList", headquarterList);
		return ("state_sales");
	}

}
