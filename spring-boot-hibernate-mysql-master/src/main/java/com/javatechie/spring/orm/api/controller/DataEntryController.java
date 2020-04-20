package com.javatechie.spring.orm.api.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.DivisionDao;
import com.javatechie.spring.orm.api.dao.DoctorDao;
import com.javatechie.spring.orm.api.dao.HeadquarterDao;
import com.javatechie.spring.orm.api.dao.StateDao;
import com.javatechie.spring.orm.api.dto.StateDoctorBusinessDto;
import com.javatechie.spring.orm.api.dto.User_DoctorDto;
import com.javatechie.spring.orm.api.model.Division;
import com.javatechie.spring.orm.api.model.DoctorDetails;
import com.javatechie.spring.orm.api.model.Headquarter;
import com.javatechie.spring.orm.api.model.State;
import com.javatechie.spring.orm.api.model.User_Doctor;
import com.sun.jndi.url.dns.dnsURLContext;

@RestController
public class DataEntryController {

	@Autowired
	private DivisionDao divisionDao;
	
	@Autowired
	private StateDao stateDao;
	
	@Autowired
	private HeadquarterDao headquarterDao;
	
	@Autowired
	private DoctorDao doctorDao;
	
	@RequestMapping("/data_entry")
    public ModelAndView dataEntry(Model model, HttpServletRequest request){
        String division_sessionid =  (String) request.getSession().getAttribute("division_sessionid");
        String headquarter_sessionid =  (String) request.getSession().getAttribute("headquarter_sessionid");
        String state_sessionid =  (String) request.getSession().getAttribute("state_sessionid");
        String user_sessionid =  (String) request.getSession().getAttribute("user_sessionid");
        System.out.println("11111111111 : " + user_sessionid);

		List<Division> divisionList = divisionDao.getDivisionList(division_sessionid);
		List<State> stateList = stateDao.getUserStateList(state_sessionid);
		List<Headquarter> headquarterList = stateDao.getUserHeadquarterList(headquarter_sessionid);
		List<User_DoctorDto> user_doctorList = doctorDao.getUserDoctorList(user_sessionid);
		
		model.addAttribute("divisionList",divisionList);
		model.addAttribute("stateList",stateList);
		model.addAttribute("headquarterList",headquarterList);
		model.addAttribute("user_doctorList",user_doctorList);
		return new ModelAndView("data_entry");
		
	}
}
