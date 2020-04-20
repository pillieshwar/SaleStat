package com.javatechie.spring.orm.api.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javatechie.spring.orm.api.dao.LoginDao;
import com.javatechie.spring.orm.api.dto.LoginDto;
import com.javatechie.spring.orm.api.dto.LoginLocalStorageDto;
import com.javatechie.spring.orm.api.model.Login;

@Controller
public class LoginController {

	@Autowired
	private LoginDao loginDao;

	@RequestMapping("/") // redirects the page to index which will further redirect automatically to
							// login page
	public String indexRedirect() {
		return "index";
	}

	@RequestMapping("/index") // redirects to the login page
	public String index() {
		return ("index");
	}

	@RequestMapping("/login") // renders login.jsp which then further takes the username and password from the
								// form and send it to the login_data method
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/login_data", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<Object> LoginData(@RequestBody LoginDto jsonLoginString, HttpSession session, HttpServletRequest request) {
		List<Object> list = loginDao.checkLogin(jsonLoginString);
		String state_sessionid="",division_sessionid = "", headquarter_sessionid="", role_sessionid = "",user_sessionid ="";

		for (int i = 0; i < list.size(); i++) {
			Object[] row = (Object[]) list.get(i);
			String str = Arrays.toString(row);
			String strArray[] = str.split(",");
			division_sessionid = strArray[1].trim();
			state_sessionid = strArray[2].trim();
			headquarter_sessionid = strArray[3].trim();
			role_sessionid = strArray[6].trim();
			user_sessionid = strArray[5].trim();
			System.out.println("Element " + strArray[6]);
		}
		request.getSession().setAttribute("division_sessionid", division_sessionid);
		request.getSession().setAttribute("state_sessionid", state_sessionid);
		request.getSession().setAttribute("headquarter_sessionid", headquarter_sessionid);
		request.getSession().setAttribute("role_sessionid", role_sessionid);
		request.getSession().setAttribute("user_sessionid", user_sessionid);
//		session.setAttribute("state_id_session", state_id_session);
		return list;
	}
}
