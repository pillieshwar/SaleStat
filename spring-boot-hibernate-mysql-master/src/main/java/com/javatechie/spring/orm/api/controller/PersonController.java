package com.javatechie.spring.orm.api.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.DoctorDataEntryDao;
import com.javatechie.spring.orm.api.dao.LocationDao;
import com.javatechie.spring.orm.api.dao.LoginDao;
import com.javatechie.spring.orm.api.dao.PersonDao;
import com.javatechie.spring.orm.api.dto.LocationDto;
import com.javatechie.spring.orm.api.model.DoctorDetails;
import com.javatechie.spring.orm.api.model.Location;
import com.javatechie.spring.orm.api.model.Login;
import com.javatechie.spring.orm.api.model.Person;

@Controller
//@RequestMapping("/spring-boot-orm")
public class PersonController {

	@Autowired
	private PersonDao dao;

	@Autowired
	private LocationDao locationDao;
	
	@Autowired
	private LoginDao loginDao;
	
	@Autowired
	private DoctorDataEntryDao doctorDataEntryDao ;

	@RequestMapping("/")
    public String home(Map<String, Object> model) {
        model.put("message", "HowToDoInJava Reader !!");
        return "index";
    }
	
	@RequestMapping("/profile")
    public String profile() {
        return "profile";
    }
	@RequestMapping("/login")
    public String login() {
        return "login";
    }
	@RequestMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }
	
	@PostMapping("/savePerson")
	public String save(@RequestBody Person person) {
		dao.savePerson(person);
		return "success";
	}

	@GetMapping("/getAll")
	public List<Person> getALlPersons() {
		return dao.getPersons();
	}

	@GetMapping("/getData")
	public List<Person> getFewPersons() {
		return dao.getFewPersons();
	}
	
	@RequestMapping("/index")
    public ModelAndView myindex(Model model){
		
		List<Person> p = dao.getPersons();
		List<LocationDto> location = locationDao.getAllLocations();
//		System.out.println(""+location.get(0).getId());
		model.addAttribute("message",p);
		model.addAttribute("location",location);
//		System.out.println(model.toString());
        return new ModelAndView("index");
    }
	
/*	@RequestMapping("/state_sales")
    public ModelAndView stateSales(Model model){
		List<LocationDto> location = locationDao.getAllLocations();
		model.addAttribute("location",location);
		return new ModelAndView("state_sales");
		
	}*/
	
	@RequestMapping("/state_doctor_business")
    public ModelAndView stateDoctorBusiness(Model model){
		List<LocationDto> location = locationDao.getAllLocations();
		model.addAttribute("location",location);
		return new ModelAndView("state_doctor_business");
		
	}
	
	@RequestMapping("/data_entry")
    public ModelAndView dataEntry(Model model){
		List<DoctorDetails> doctorDetails = doctorDataEntryDao.getAllDoctorData();
		model.addAttribute("location",doctorDetails);
		return new ModelAndView("data_entry");
		
	}
	
	@RequestMapping("/individual_doctor_business_info")
    public ModelAndView individualDoctorBusinessInfo(Model model){
		List<LocationDto> location = locationDao.getAllLocations();
		model.addAttribute("location",location);
		return new ModelAndView("individual_doctor_business_info");
		
	}
	
	/*@RequestMapping(path="/state_sales/{month}")
	public String getMessage(@PathVariable("month") String month) {
				return month;
		
	}*/
	
	//@RequestMapping(value = "/state_sales/{month}", method = RequestMethod.GET)
	@RequestMapping(path="/state_sales/{month}")
    public ModelAndView stateSalesMonth(@PathVariable("month") String month, Model model) {
		System.out.println("inside");
		System.out.println(month);
		//List<LocationDto> location = locationDao.getStateSalesMonth();
		//System.out.println(location.get(0).getState());
		List<LocationDto> location = locationDao.getStateSalesMonth(month);
		model.addAttribute("location",location);
		return new ModelAndView("state_sales");
	}
	 
	@RequestMapping("/chart-chartjs")
    public ModelAndView myindexx(Model model){
		
		List<Person> p = dao.getPersons();
		model.addAttribute("message",p);
		System.out.println(model.toString());
        return new ModelAndView("chart-chartjs");
    }
//	@RequestMapping("/login")
//    public ModelAndView login(Model model){
//
//        return new ModelAndView("login");
//    }
	
	
	@RequestMapping(value = "/edited_data", method = RequestMethod.POST)
    @ResponseBody
    public void edited_data(@RequestBody Location jsonString) {
		//Person person=personService.savedata(jsonString);
		locationDao.saveLocation(jsonString);
		System.out.println("succrss");
    }
	
	@RequestMapping(value = "/login_data", method = RequestMethod.POST, produces= MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String LoginData(@RequestBody Login jsonString) {	
		String result = loginDao.checkLogin(jsonString);
		System.out.println("result = "+result);
		return result;
    }
	
	@RequestMapping(value = "/doctor_data_entry", method = RequestMethod.POST)
    @ResponseBody
    public void doctorDataEntry(@RequestBody DoctorDetails jsonString) {
		//Person person=personService.savedata(jsonString);
		doctorDataEntryDao.insertDoctorDetails(jsonString);
		System.out.println("success");
    }
	
	@RequestMapping("/all_doctors")
    public ModelAndView allDoctors(Model model){
		List<LocationDto> location = locationDao.getAllLocations();
		model.addAttribute("location",location);
		return new ModelAndView("all_doctors");
		
	}
	
	 @RequestMapping(value = { "/ajax", "/ajax/" }, method = RequestMethod.GET)
	    @ResponseBody
	    public String ajax() {
	        return "{\"url\":\"New Song URL\"}";
	    }
}
