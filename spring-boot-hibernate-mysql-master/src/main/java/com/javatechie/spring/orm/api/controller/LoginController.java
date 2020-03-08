package com.javatechie.spring.orm.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javatechie.spring.orm.api.dao.LoginDao;
import com.javatechie.spring.orm.api.model.Login;

@Controller
public class LoginController {

	@Autowired
	private LoginDao loginDao;
	
	@RequestMapping("/")	//redirects the page to index which will further redirect automatically to login page
    public String indexRedirect() { 
        return "index";
    }
	
	@RequestMapping("/index") //redirects to the login page
    public String index(){
        return ("index");
    }
	
	@RequestMapping("/login") //renders login.jsp which then further takes the username and password from the form and send it to the login_data method
    public String login() {
        return "login";
    }
	
	@RequestMapping(value = "/login_data", method = RequestMethod.POST, produces= MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String LoginData(@RequestBody Login jsonLoginString) {	
		String result = loginDao.checkLogin(jsonLoginString);
		return result;
    }
}
