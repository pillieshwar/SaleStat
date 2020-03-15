package com.javatechie.spring.orm.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping("/state_sales")
    public ModelAndView stateSales(Model model){		
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
    public String stateSalesMonth(@RequestParam("state") String state, Model model) {
		System.out.println("state---->"+state);
		List<State> stateList = stateDao.getStateList();
		model.addAttribute("stateList",stateList);
		
    	List<HeadquarterListDto> headquarterList = headquarterDao.headquarterList(state);
		model.addAttribute("headquarterList",headquarterList);
		return ("state_sales");
	}
}
