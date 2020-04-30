package com.javatechie.spring.orm.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.DoctorDataEntryDao;
import com.javatechie.spring.orm.api.dao.LocationDao;
import com.javatechie.spring.orm.api.dao.PersonDao;
import com.javatechie.spring.orm.api.model.doctordetails;
import com.javatechie.spring.orm.api.model.location;
import com.javatechie.spring.orm.api.model.person;

@Controller
public class PersonController {

	@Autowired
	private PersonDao dao;

	@Autowired
	private LocationDao locationDao;

	@Autowired
	private DoctorDataEntryDao doctorDataEntryDao;

	@RequestMapping("/profile")
	public String profile() {
		return "profile";
	}

	@PostMapping("/savePerson")
	public String save(@RequestBody person person) {
		dao.savePerson(person);
		return "success";
	}

	@GetMapping("/getAll")
	public List<person> getALlPersons() {
		return dao.getPersons();
	}

	@GetMapping("/getData")
	public List<person> getFewPersons() {
		return dao.getFewPersons();
	}

	/*
	 * @RequestMapping(path="/state_sales/{month}") public String
	 * stateSalesMonth(@PathVariable("month") String month, Model model) {
	 * System.out.println("inside"); System.out.println(month);
	 * List<HeadquarterListDto> location = locationDao.getStateSalesMonth(month);
	 * 
	 * List<HeadquarterListDto> headquarterList =
	 * headquarterDao.headquarterList(month);
	 * 
	 * System.out.println("headquarterList"+headquarterList.size());
	 * model.addAttribute("location",location);
	 * model.addAttribute("headquarterList",headquarterList); return
	 * ("state_sales"); }
	 */

	@RequestMapping("/chart-chartjs")
	public ModelAndView myindexx(Model model) {

		List<person> p = dao.getPersons();
		model.addAttribute("message", p);
		System.out.println(model.toString());
		return new ModelAndView("chart-chartjs");
	}

	@RequestMapping(value = "/edited_data", method = RequestMethod.POST)
	@ResponseBody
	public void edited_data(@RequestBody location jsonString) {
		// Person person=personService.savedata(jsonString);
		locationDao.saveLocation(jsonString);
		System.out.println("succrss");
	}

	@RequestMapping(value = "/doctor_data_entry", method = RequestMethod.POST)
	@ResponseBody
	public void doctorDataEntry(@RequestBody doctordetails jsonString) {
		// Person person=personService.savedata(jsonString);
		doctorDataEntryDao.insertDoctorDetails(jsonString);
		System.out.println("success");
	}

}
