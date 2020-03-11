package com.javatechie.spring.orm.api.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("/add_medicine") //redirects to the login page
    public String addMedicine(){
        return ("add_medicine");
    }
}
