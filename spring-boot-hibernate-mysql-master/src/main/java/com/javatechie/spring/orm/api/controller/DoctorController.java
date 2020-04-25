package com.javatechie.spring.orm.api.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.DoctorDao;
import com.javatechie.spring.orm.api.dto.GetIndividualDoctorSaleDto;
import com.javatechie.spring.orm.api.dto.LocationDto;
import com.javatechie.spring.orm.api.dto.StateDoctorBusinessDto;


@RestController
public class DoctorController {

	@Autowired
	private DoctorDao doctorDao;
	
	@GetMapping("/state_doctor_business")
    public ModelAndView stateDoctorBusiness(@RequestParam("hq_id") String hq_id, Model model, HttpServletRequest request){
		System.out.println("hq_id : " + hq_id);
		String state_sessionid =  (String) request.getSession().getAttribute("state_sessionid");
		List<StateDoctorBusinessDto> stateDoctorBusinessObjectList = doctorDao.getStateDoctorBusiness(hq_id,state_sessionid);
		System.out.println("stateDoctorBusinessObjectList size : " + stateDoctorBusinessObjectList.size());
//		System.out.println("stateDoctorBusinessObjectList : " + stateDoctorBusinessObjectList.get(0).getDoctor_name());
		model.addAttribute("stateDoctorBusinessList",stateDoctorBusinessObjectList);
		return new ModelAndView("state_doctor_business");
		
	}
	
	@GetMapping("/individual_doctor_business_info")
    public ModelAndView individualDoctorBusinessInfo(@RequestParam("dr_id") String dr_id, Model model){
		System.out.println("dr_id : " + dr_id);
		List<GetIndividualDoctorSaleDto> individualDoctorSaleList = doctorDao.getIndividualDoctorSaleList(dr_id);
		
		model.addAttribute("individualDoctorSaleList",individualDoctorSaleList);
		return new ModelAndView("individual_doctor_business_info");
		
	}
	
}
