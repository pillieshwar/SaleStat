package com.javatechie.spring.orm.api.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.DashboardDao;
import com.javatechie.spring.orm.api.dao.HeadquarterDao;
import com.javatechie.spring.orm.api.dao.LocationDao;
import com.javatechie.spring.orm.api.dao.StateDao;
import com.javatechie.spring.orm.api.dto.HeadquarterListDto;
import com.javatechie.spring.orm.api.dto.LocationDto;
import com.javatechie.spring.orm.api.model.State;

@Controller
public class StateController {
	
	@Autowired
	private HeadquarterDao headquarterDao;
	
	@Autowired
	private LocationDao locationDao;
	
	@Autowired
	private StateDao stateDao;
	
	@Autowired
	private DashboardDao dashboardDao;
	
	@RequestMapping("/state_sales")
    public ModelAndView stateSales(Model model, HttpSession session) {
		int state_id_session = Integer.parseInt((String) session.getAttribute("state_id_session"));
		List<State> stateDropdownList = dashboardDao.stateDropdown1(state_id_session);
		model.addAttribute("stateDropdownList", stateDropdownList);
		return new ModelAndView("state_sales");
	}
	
	/*@RequestMapping(path="/state_sales/{state}")
    public String stateSalesMonth(@PathVariable("state") String state, Model model) {
		
		List<State> stateList = stateDao.getStateList();
		model.addAttribute("stateList",stateList);
		
    	List<HeadquarterListDto> headquarterList = headquarterDao.headquarterList(state);
		model.addAttribute("headquarterList",headquarterList);
		return ("state_sales");
	}*/
	
	@GetMapping("/state_sales")
    public String stateSalesMonth(@RequestParam("state") String state, Model model, HttpSession session) {
		System.out.println("state---->"+state);
		List<State> stateList = stateDao.getStateList();
		model.addAttribute("stateList",stateList);
		
		int state_id_session = Integer.parseInt((String) session.getAttribute("state_id_session"));
		List<State> stateDropdownList = dashboardDao.stateDropdown1(state_id_session);
		model.addAttribute("stateDropdownList", stateDropdownList);
		
    	List<HeadquarterListDto> headquarterList = headquarterDao.headquarterList(state);
		model.addAttribute("headquarterList",headquarterList);
		return ("state_sales");
	}
}
