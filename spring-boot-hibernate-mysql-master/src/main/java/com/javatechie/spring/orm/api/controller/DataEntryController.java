package com.javatechie.spring.orm.api.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.DashboardDao;
import com.javatechie.spring.orm.api.dao.DataEntryDao;
import com.javatechie.spring.orm.api.dao.DivisionDao;
import com.javatechie.spring.orm.api.dao.DoctorDao;
import com.javatechie.spring.orm.api.dao.MedicineDao;
import com.javatechie.spring.orm.api.dao.StateDao;
import com.javatechie.spring.orm.api.dto.AddDataEntryDto;
import com.javatechie.spring.orm.api.dto.User_DoctorDto;
import com.javatechie.spring.orm.api.model.division;
import com.javatechie.spring.orm.api.model.headquarter;
import com.javatechie.spring.orm.api.model.medicine;
import com.javatechie.spring.orm.api.model.state;

@RestController
public class DataEntryController {

	@Autowired
	private DivisionDao divisionDao;

	@Autowired
	private StateDao stateDao;

	@Autowired
	private DoctorDao doctorDao;

	@Autowired
	private MedicineDao medicineDao;

	@Autowired
	private DataEntryDao dataEntryDao;

	@Autowired
	private DashboardDao dashboardDao;

	@RequestMapping("/data_entry")
	public ModelAndView dataEntry(Model model, HttpServletRequest request) {
		String division_sessionid = (String) request.getSession().getAttribute("division_sessionid");
		String headquarter_sessionid = (String) request.getSession().getAttribute("headquarter_sessionid");
		String state_sessionid = (String) request.getSession().getAttribute("state_sessionid");
		String user_sessionid = (String) request.getSession().getAttribute("user_sessionid");

		List<division> divisionList = divisionDao.getDivisionList(division_sessionid);
		List<state> stateList = stateDao.getUserStateList(state_sessionid);
		List<headquarter> headquarterList = stateDao.getUserHeadquarterList(headquarter_sessionid);
		List<User_DoctorDto> user_doctorList = doctorDao.getUserDoctorList(user_sessionid);

		List<medicine> userDoctorMedicineList = new ArrayList<medicine>();
		for (User_DoctorDto temp_user_doctorList : user_doctorList) {
			int doctorId = temp_user_doctorList.getDoctor_id();
			userDoctorMedicineList = medicineDao.getUserDoctorMedicineList(doctorId);
		}

		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);

		model.addAttribute("divisionList", divisionList);
		model.addAttribute("stateList", stateList);
		model.addAttribute("headquarterList", headquarterList);
		model.addAttribute("user_doctorList", user_doctorList);
		model.addAttribute("userDoctorMedicineList", userDoctorMedicineList);
		return new ModelAndView("data_entry");

	}

	@RequestMapping(value = "/add_data_entry", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String addDataEntry(@RequestBody AddDataEntryDto dataEntry) {
		System.out.println("inside addDataEntry");
		return dataEntryDao.addDataEntry(dataEntry);

	}
}
