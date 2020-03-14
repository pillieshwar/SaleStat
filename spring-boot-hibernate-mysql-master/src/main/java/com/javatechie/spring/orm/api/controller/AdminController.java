package com.javatechie.spring.orm.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javatechie.spring.orm.api.dao.HeadquarterDao;
import com.javatechie.spring.orm.api.dao.StateDao;
import com.javatechie.spring.orm.api.dto.DynamicHeadquarterDropdownDto;
import com.javatechie.spring.orm.api.dto.HeadquarterListDto;
import com.javatechie.spring.orm.api.model.Headquarter;
import com.javatechie.spring.orm.api.model.State;

@Controller
public class AdminController {
	
	@Autowired
	private StateDao stateDataDao;
	
	@Autowired
	private StateDao stateDao;
	
	@Autowired
	private HeadquarterDao headquarterDao;

	@RequestMapping("/add_medicine") //redirects to add new medicine page
    public String addMedicine(){
        return ("add_medicine");
    }
	
	@RequestMapping("/add_doctor") //redirects to add new doctor page
    public String addDoctor(Model model){
		List<State> stateList = stateDao.getStateList();
		model.addAttribute("stateList",stateList);
        return ("add_doctor");
    }
	
	@RequestMapping("/add_sponsorship") //redirects to add new sponsorship page
    public String addSponsorship(){
        return ("add_sponsorship");
    }
	
	@RequestMapping("/add_state") //redirects to add new state page
    public String addState(){
        return ("add_state");
    }
	
	@RequestMapping("/add_headquarter") //redirects to add new headquarter page
    public String addHeadquarter(Model model){
		List<State> stateList = stateDao.getStateList();
		model.addAttribute("stateList",stateList);
        return ("add_headquarter");
    }
	
	@RequestMapping("/add_role") //redirects to add new role page
    public String addRole(){
        return ("add_role");
    }
    
	@RequestMapping(value = "/add_state_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String addStateData(@RequestBody State statejson){
    	String ret = "fail";
    	System.out.println("inside add state data");
    	if(stateDataDao.saveState(statejson) != null)
    	{
    		ret = "success";
    	}
    	System.out.println(ret);
        return (ret);
    }
	
	@RequestMapping(value = "/add_headquarter_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public void addHeadquarterData(@RequestBody Headquarter headquarterjson){
		System.out.println("inside add headquarter data");
		headquarterDao.saveHeadquarter(headquarterjson);
    }
	
    @RequestMapping(value = "/dynamic_headquarter_dropdown", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public List<Headquarter> dynamiceHeadquarterDropdown(@RequestBody Headquarter headquarterdropdownjson){
    	List<Headquarter> dynamicHeadquarterDropdown = headquarterDao.dynamicHeadquarterDropdown(headquarterdropdownjson);
		return dynamicHeadquarterDropdown;
    }
    
 /*public String[] dynamiceHeadquarterDropdown(@RequestBody Headquarter headquarterdropdownjson, Model model){
    	
		System.out.println("inside dynamicHeadquarterDropdownDto"+headquarterdropdownjson.getState_id());
		List<String> dynamicHeadquarterDropdown = headquarterDao.dynamicHeadquarterDropdown(headquarterdropdownjson);
		
        String[] arr = new String[dynamicHeadquarterDropdown.size()]; 

		for (int i =0; i < dynamicHeadquarterDropdown.size(); i++) 
            arr[i] = dynamicHeadquarterDropdown.get(i); 
		
		model.addAttribute("headquarterList",dynamicHeadquarterDropdown);
		return arr;
    }*/
}
