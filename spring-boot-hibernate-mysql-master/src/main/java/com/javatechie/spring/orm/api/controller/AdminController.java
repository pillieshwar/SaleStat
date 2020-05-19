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

import com.javatechie.spring.orm.api.dao.AdminDao;
import com.javatechie.spring.orm.api.dao.DashboardDao;
import com.javatechie.spring.orm.api.dao.DoctorDao;
import com.javatechie.spring.orm.api.dao.HeadquarterDao;
import com.javatechie.spring.orm.api.dao.MedicineDao;
import com.javatechie.spring.orm.api.dao.RoleDao;
import com.javatechie.spring.orm.api.dao.StateDao;
import com.javatechie.spring.orm.api.dto.AddDoctorDto;
import com.javatechie.spring.orm.api.dto.AddDoctorMedicineDto;
import com.javatechie.spring.orm.api.dto.AddUserDoctorDto;
import com.javatechie.spring.orm.api.dto.DivisionStateDto;
import com.javatechie.spring.orm.api.dto.DynamicMedicineDropdownDto;
import com.javatechie.spring.orm.api.dto.GetAllDoctorsDto;
import com.javatechie.spring.orm.api.dto.GetAllMedicinesDto;
import com.javatechie.spring.orm.api.dto.GetDoctorMedicineDto;
import com.javatechie.spring.orm.api.dto.GetHeadquarterDto;
import com.javatechie.spring.orm.api.model.division;
import com.javatechie.spring.orm.api.model.doctor;
import com.javatechie.spring.orm.api.model.headquarter;
import com.javatechie.spring.orm.api.model.medicine;
import com.javatechie.spring.orm.api.model.role;
import com.javatechie.spring.orm.api.model.sponsorship;
import com.javatechie.spring.orm.api.model.state;
import com.javatechie.spring.orm.api.model.user;

@Controller
public class AdminController {

	@Autowired
	private StateDao stateDataDao;

	@Autowired
	private StateDao stateDao;

	@Autowired
	private HeadquarterDao headquarterDao;

	@Autowired
	private MedicineDao medicineDao;

	@Autowired
	private RoleDao roleDao;

	@Autowired
	private DoctorDao doctorDao;

	@Autowired
	private DashboardDao dashboardDao;
	
	@Autowired
	private AdminDao adminDao;

	@RequestMapping("/add_medicine") // redirects to add new medicine page
	public String addMedicine(Model model, HttpServletRequest request) {
		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);
		
		List<medicine> medicineList = adminDao.getMedicineList();
		model.addAttribute("medicineList", medicineList);
		
		return ("add_medicine");
	}

	@RequestMapping("/add_doctor") // redirects to add new doctor page
	public String addDoctor(Model model, HttpServletRequest request) {
		List<state> stateList = stateDao.getStateList();
		List<division> divisionList = roleDao.getDivisionList();
		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);
		model.addAttribute("divisionList", divisionList);
		model.addAttribute("stateList", stateList);
		return ("add_doctor");
	}

	@RequestMapping("/add_sponsorship") // redirects to add new sponsorship page
	public String addSponsorship(Model model, HttpServletRequest request) {
		
		List<sponsorship> sponsorshipList = adminDao.getSponsorshipList();
		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);
		model.addAttribute("sponsorshipList", sponsorshipList);
		return ("add_sponsorship");
	}

	@RequestMapping("/add_state") // redirects to add new state page
	public String addState(Model model, HttpServletRequest request) {
		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);
		
		List<state> stateList = adminDao.getStateList();
		model.addAttribute("stateList", stateList);
		return ("add_state");
	}

	@RequestMapping("/add_headquarter") // redirects to add new headquarter page
	public String addHeadquarter(Model model, HttpServletRequest request) {
		List<state> stateList = stateDao.getStateList();
		model.addAttribute("stateList", stateList);

		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);

		List<division> divisionList = roleDao.getDivisionList();
		model.addAttribute("divisionList", divisionList);
		
		List<GetHeadquarterDto> headquarterList = adminDao.getHeadquarterList();
		model.addAttribute("headquarterList", headquarterList);
		
		return ("add_headquarter");
	}

	@RequestMapping("/add_role") // redirects to add new role page
	public String addRole(Model model, HttpServletRequest request) {
		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);
		
		List<role> roleList = adminDao.getRoleList();
		model.addAttribute("roleList", roleList);
		return ("add_role");
	}

	@RequestMapping(value = "/add_state_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String addStateData(@RequestBody state statejson) {
		String ret = "fail";
		System.out.println("inside add state data");
		if (stateDataDao.saveState(statejson) != null) {
			ret = "success";
		}
		System.out.println(ret);
		return (ret);
	}

	@RequestMapping(value = "/add_headquarter_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addHeadquarterData(@RequestBody DivisionStateDto headquarterjson) {
		System.out.println("inside add headquarter data");
		headquarterDao.saveHeadquarter(headquarterjson);
		// headquarterDao.saveDivisionState(headquarterjson);

	}

	@RequestMapping(value = "/dynamic_headquarter_dropdown", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<headquarter> dynamiceHeadquarterDropdown(@RequestBody headquarter headquarterdropdownjson) {
		List<headquarter> dynamicHeadquarterDropdown = headquarterDao
				.dynamicHeadquarterDropdown(headquarterdropdownjson);
		return dynamicHeadquarterDropdown;
	}

	@RequestMapping(value = "/add_medicine_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addMedicineData(@RequestBody medicine medicinejson) {
		System.out.println("inside add medicine data");
		medicineDao.saveMedicine(medicinejson);
	}

	@RequestMapping(value = "/add_sponsorship_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addSponsorshipData(@RequestBody sponsorship sponsorshipjson) {
		System.out.println("inside add sponsorship data");
		medicineDao.saveSponsorship(sponsorshipjson);
	}

	@RequestMapping(value = "/add_role_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addRoleData(@RequestBody role rolejson) {
		System.out.println("inside add sponsorship data");
		medicineDao.saveRole(rolejson);
	}

	@RequestMapping(value = "/add_doctor_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addDoctorData(@RequestBody AddDoctorDto adddoctorjson) {
		System.out.println("inside add headquarter data");
		doctorDao.saveDoctor(adddoctorjson);

	}

	@RequestMapping("/user_doctor") // redirects to user_doctor page
	public String userDoctor(Model model, HttpServletRequest request) {

		List<user> tempUserList = roleDao.getUserList();
		String arr[][] = new String[tempUserList.size()][2];
		int n = 0;
		for (user userArr : tempUserList) {
			arr[n][0] = String.valueOf(userArr.getUser_id());
			arr[n][1] = userArr.getUsername();
			n++;
		}

		List<doctor> doctorList = roleDao.getDoctorList();
		System.out.println("doctorList" + doctorList.size());
		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);
		model.addAttribute("userList", arr);
		model.addAttribute("doctorList", doctorList);

		return ("user_doctor");
	}

	@RequestMapping(value = "/add_userDoctor_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addUserDoctorData(@RequestBody AddUserDoctorDto userdoctorjson, Model model,
			HttpServletRequest request) {
		System.out.println("inside userdoctorjson data");
		doctorDao.userDoctorData(userdoctorjson);
	}

	@RequestMapping("/doctor_medicine") // redirects to doctor_medicine page
	public String doctorMedicine(Model model, HttpServletRequest request) {

		List<GetAllDoctorsDto> doctorList = doctorDao.getAllDoctorsList();
		model.addAttribute("doctorList", doctorList);

		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);

		List<GetAllMedicinesDto> medicineList = medicineDao.getAllMedicinesList();
		model.addAttribute("medicineList", medicineList);
		
		List<GetDoctorMedicineDto> doctorMedicineList = adminDao.getDoctorMedicineList();
		model.addAttribute("doctorMedicineList", doctorMedicineList);
		
		return ("doctor_medicine");
	}

	@RequestMapping(value = "/add_doctorMedicine_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addDoctorMedicineData(@RequestBody AddDoctorMedicineDto doctormedicinejson) {
		System.out.println("inside userdoctorjson data");
		doctorDao.doctorMedicineData(doctormedicinejson);
	}

	@RequestMapping(value = "/dynamic_medicine_dropdown", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<medicine> dynamicMedicineDropdown(@RequestBody DynamicMedicineDropdownDto medicinedropdownjson) {
		List<medicine> dynamicMedicineDropdown = medicineDao.dynamicMedicineDropdown(medicinedropdownjson);
		return dynamicMedicineDropdown;
	}
}
