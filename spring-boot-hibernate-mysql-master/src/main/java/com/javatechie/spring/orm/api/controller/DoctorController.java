package com.javatechie.spring.orm.api.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.DoctorDao;
import com.javatechie.spring.orm.api.dto.StateDoctorBusinessDto;


@RestController
public class DoctorController {

	@Autowired
	private DoctorDao doctorDao;
	
	@GetMapping("/state_doctor_business")
    public ModelAndView stateDoctorBusiness(@RequestParam("hq_id") String hq_id, Model model){
		System.out.println("hq_id : " + hq_id);
		List<StateDoctorBusinessDto> stateDoctorBusinessObjectList = doctorDao.getStateDoctorBusiness(hq_id);
		System.out.println("stateDoctorBusinessObjectList size : " + stateDoctorBusinessObjectList.size());
//		System.out.println("stateDoctorBusinessObjectList : " + stateDoctorBusinessObjectList.get(0).getDoctor_name());
		model.addAttribute("stateDoctorBusinessList",stateDoctorBusinessObjectList);
		return new ModelAndView("state_doctor_business");
		
	}
}
