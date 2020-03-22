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

import com.javatechie.spring.orm.api.dao.RoleDao;
import com.javatechie.spring.orm.api.dao.SignupDao;
import com.javatechie.spring.orm.api.dao.StateDao;
import com.javatechie.spring.orm.api.dto.LocationDto;
import com.javatechie.spring.orm.api.model.Signup;
import com.javatechie.spring.orm.api.model.State;

@Controller
public class SignupController {

	@Autowired
	private SignupDao signupDao;

	@Autowired
	private StateDao stateDao;
	
	@Autowired
	private RoleDao roleDao;
	
	@RequestMapping("/signup")
	public String signup(Model model) {
		List<State> stateList = stateDao.getStateList();
		List<State> roleList = roleDao.getRoleList();
		model.addAttribute("stateList",stateList);
		model.addAttribute("roleList",roleList);
		
		
		return "signup";
	}

	@RequestMapping(value = "/signup_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String SignupData(@RequestBody Signup jsonSignupString) {
		System.out.println("userrrnameee ---->" + jsonSignupString.getRole_id());
		String result = signupDao.signupUser(jsonSignupString);
		
		return result;
	}
}
