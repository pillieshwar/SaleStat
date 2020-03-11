package com.javatechie.spring.orm.api.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("/add_medicine") //redirects to add new medicine page
    public String addMedicine(){
        return ("add_medicine");
    }
	
	@RequestMapping("/add_doctor") //redirects to add new doctor page
    public String addDoctor(){
        return ("add_doctor");
    }
	
}
