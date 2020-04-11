package com.javatechie.spring.orm.api.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javatechie.spring.orm.api.dao.DashboardDao;
import com.javatechie.spring.orm.api.dao.DoctorDao;
import com.javatechie.spring.orm.api.dao.HeadquarterDao;
import com.javatechie.spring.orm.api.dao.MedicineDao;
import com.javatechie.spring.orm.api.dao.RoleDao;
import com.javatechie.spring.orm.api.dao.StateDao;
import com.javatechie.spring.orm.api.dto.AddDoctorDto;
import com.javatechie.spring.orm.api.dto.AddUserDoctorDto;
import com.javatechie.spring.orm.api.dto.DivisionStateDto;
import com.javatechie.spring.orm.api.model.Division;
import com.javatechie.spring.orm.api.model.Doctor;
import com.javatechie.spring.orm.api.model.Headquarter;
import com.javatechie.spring.orm.api.model.Medicine;
import com.javatechie.spring.orm.api.model.Role;
import com.javatechie.spring.orm.api.model.Sponsorship;
import com.javatechie.spring.orm.api.model.State;
import com.javatechie.spring.orm.api.model.User;

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

	@RequestMapping("/add_medicine") // redirects to add new medicine page
	public String addMedicine(Model model, HttpSession session) {
		return ("add_medicine");
	}

	@RequestMapping("/add_doctor") // redirects to add new doctor page
	public String addDoctor(Model model, HttpSession session) {
		List<State> stateList = stateDao.getStateList();
		List<Division> divisionList = roleDao.getDivisionList();
		model.addAttribute("divisionList", divisionList);
		model.addAttribute("stateList", stateList);
		return ("add_doctor");
	}

	@RequestMapping("/add_sponsorship") // redirects to add new sponsorship page
	public String addSponsorship(Model model, HttpSession session) {
		return ("add_sponsorship");
	}

	@RequestMapping("/add_state") // redirects to add new state page
	public String addState(Model model, HttpSession session) {
		return ("add_state");
	}

	@RequestMapping("/add_headquarter") // redirects to add new headquarter page
	public String addHeadquarter(Model model, HttpSession session) {
		List<State> stateList = stateDao.getStateList();
		model.addAttribute("stateList", stateList);

		List<Division> divisionList = roleDao.getDivisionList();
		model.addAttribute("divisionList", divisionList);
		return ("add_headquarter");
	}

	@RequestMapping("/add_role") // redirects to add new role page
	public String addRole(Model model, HttpSession session) {
		return ("add_role");
	}

	@RequestMapping(value = "/add_state_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String addStateData(@RequestBody State statejson) {
		String ret = "fail";
		System.out.println("inside add state data");
		if (stateDataDao.saveState(statejson) != null) {
			ret = "success";
		}
		System.out.println(ret);
		return (ret);
	}

	/*
	 * @RequestMapping(value = "/add_headquarter_data", method = RequestMethod.POST,
	 * produces = MediaType.APPLICATION_JSON_VALUE)
	 * 
	 * @ResponseBody public void addHeadquarterData(@RequestBody Headquarter
	 * headquarterjson){ System.out.println("inside add headquarter data");
	 * headquarterDao.saveHeadquarter(headquarterjson);
	 * //headquarterDao.saveDivisionState(headquarterjson);
	 * 
	 * }
	 */

	@RequestMapping(value = "/add_headquarter_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addHeadquarterData(@RequestBody DivisionStateDto headquarterjson) {
		System.out.println("inside add headquarter data");
		headquarterDao.saveHeadquarter(headquarterjson);
		// headquarterDao.saveDivisionState(headquarterjson);

	}

	@RequestMapping(value = "/dynamic_headquarter_dropdown", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Headquarter> dynamiceHeadquarterDropdown(@RequestBody Headquarter headquarterdropdownjson) {
		List<Headquarter> dynamicHeadquarterDropdown = headquarterDao
				.dynamicHeadquarterDropdown(headquarterdropdownjson);
		return dynamicHeadquarterDropdown;
	}

	/*
	 * public String[] dynamiceHeadquarterDropdown(@RequestBody Headquarter
	 * headquarterdropdownjson, Model model){
	 * 
	 * System.out.println("inside dynamicHeadquarterDropdownDto"
	 * +headquarterdropdownjson.getState_id()); List<String>
	 * dynamicHeadquarterDropdown =
	 * headquarterDao.dynamicHeadquarterDropdown(headquarterdropdownjson);
	 * 
	 * String[] arr = new String[dynamicHeadquarterDropdown.size()];
	 * 
	 * for (int i =0; i < dynamicHeadquarterDropdown.size(); i++) arr[i] =
	 * dynamicHeadquarterDropdown.get(i);
	 * 
	 * model.addAttribute("headquarterList",dynamicHeadquarterDropdown); return arr;
	 * }
	 */

	@RequestMapping(value = "/add_medicine_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addMedicineData(@RequestBody Medicine medicinejson) {
		System.out.println("inside add medicine data");
		medicineDao.saveMedicine(medicinejson);
	}

	@RequestMapping(value = "/add_sponsorship_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addSponsorshipData(@RequestBody Sponsorship sponsorshipjson) {
		System.out.println("inside add sponsorship data");
		medicineDao.saveSponsorship(sponsorshipjson);
	}

	@RequestMapping(value = "/add_role_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addRoleData(@RequestBody Role rolejson) {
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
	public String userDoctor(Model model) {
		
		List<User> tempUserList = roleDao.getUserList();
		String arr[][]=new String[tempUserList.size()][2];
		int n=0;
		for(User userArr : tempUserList)
		{
			arr[n][0] = String.valueOf(userArr.getUser_id());
			arr[n][1] = userArr.getUsername();
			n++;
		}
		
		List<Doctor> doctorList = roleDao.getDoctorList();
		System.out.println("doctorList" + doctorList.size());
		model.addAttribute("userList", arr);
		model.addAttribute("doctorList", doctorList);
		
		return ("user_doctor");
	}
	
	
	@RequestMapping(value = "/add_userDoctor_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public void addUserDoctorData(@RequestBody AddUserDoctorDto userdoctorjson) {
		System.out.println("inside userdoctorjson data");
		doctorDao.userDoctorData(userdoctorjson);
	}
	
}
