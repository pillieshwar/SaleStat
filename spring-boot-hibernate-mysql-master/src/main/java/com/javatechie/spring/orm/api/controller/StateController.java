package com.javatechie.spring.orm.api.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javatechie.spring.orm.api.dao.DashboardDao;
import com.javatechie.spring.orm.api.dao.HeadquarterDao;
import com.javatechie.spring.orm.api.dao.StateDao;
import com.javatechie.spring.orm.api.dto.GetHeadquarterTotalSaleDto;
import com.javatechie.spring.orm.api.model.state;

@Controller
public class StateController {

	@Autowired
	private HeadquarterDao headquarterDao;

	@Autowired
	private StateDao stateDao;

	@Autowired
	private DashboardDao dashboardDao;

	/*
	 * @RequestMapping("/state_sales") public ModelAndView stateSales(Model model,
	 * HttpServletRequest request) { int int_state_sessionid = (Integer)
	 * request.getSession().getAttribute("int_state_sessionid"); List<state>
	 * stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
	 * model.addAttribute("stateDropdownList", stateDropdownList); return new
	 * ModelAndView("state_sales"); }
	 */

	@GetMapping("/state_sales")
	public String stateSalesMonth(@RequestParam("state") String state, @RequestParam("start") String start,
			@RequestParam("end") String end, Model model, HttpServletRequest request) {

		int yrs = Calendar.getInstance().get(Calendar.YEAR);
		String year = Integer.toString(yrs);
		List<state> stateList = stateDao.getStateList();
		model.addAttribute("stateList", stateList);

		int int_state_sessionid = (Integer) request.getSession().getAttribute("int_state_sessionid");
		List<state> stateDropdownList = dashboardDao.stateDropdown1(int_state_sessionid);
		model.addAttribute("stateDropdownList", stateDropdownList);

		String headquarter_sessionid = (String) request.getSession().getAttribute("headquarter_sessionid");
		System.out.println("headquarter_sessionid : " + headquarter_sessionid);
		int headquarterId = Integer.parseInt(headquarter_sessionid);
		List<GetHeadquarterTotalSaleDto> headquarterList = headquarterDao.headquarterList(state, headquarterId, start,
				end);

		List<GetHeadquarterTotalSaleDto> x = new ArrayList<>();
		for (GetHeadquarterTotalSaleDto hqList : headquarterList) {
			if (start.equals("0")) {
				hqList.setStart_date(year + "-01");
				hqList.setEnd_date(year + "-12");
			}
			else {
				hqList.setStart_date(start);
				hqList.setEnd_date(end);
			}
			
			x.add(hqList);
		}
		model.addAttribute("headquarterList", x);
		return ("state_sales");
	}

}
