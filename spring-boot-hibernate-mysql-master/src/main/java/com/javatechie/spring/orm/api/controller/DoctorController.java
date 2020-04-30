package com.javatechie.spring.orm.api.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.javatechie.spring.orm.api.dao.DoctorDao;
import com.javatechie.spring.orm.api.dto.GetIndividualDoctorSaleDto;
import com.javatechie.spring.orm.api.dto.GetIndividualDoctorTotalSaleDto;
import com.javatechie.spring.orm.api.dto.StateDoctorBusinessDto;


@RestController
public class DoctorController {

	@Autowired
	private DoctorDao doctorDao;
	
	@GetMapping("/state_doctor_business")
    public ModelAndView stateDoctorBusiness(@RequestParam("hq_id") String hq_id, Model model, HttpServletRequest request){
		System.out.println("hq_id : " + hq_id);
		String state_sessionid =  (String) request.getSession().getAttribute("state_sessionid");
		String user_sessionid =  (String) request.getSession().getAttribute("user_sessionid");
		List<StateDoctorBusinessDto> stateDoctorBusinessObjectList = doctorDao.getStateDoctorBusiness(hq_id,state_sessionid, user_sessionid);
		System.out.println("stateDoctorBusinessObjectList size : " + stateDoctorBusinessObjectList.size());
//		System.out.println("stateDoctorBusinessObjectList : " + stateDoctorBusinessObjectList.get(0).getDoctor_name());
		model.addAttribute("stateDoctorBusinessList",stateDoctorBusinessObjectList);
		return new ModelAndView("state_doctor_business");
		
	}
	
	@GetMapping("/individual_doctor_business_info")
    public ModelAndView individualDoctorBusinessInfo(@RequestParam("dr_id") String dr_id, Model model){
		System.out.println("dr_id : " + dr_id);
		List<GetIndividualDoctorSaleDto> individualDoctorSaleList = doctorDao.getIndividualDoctorSaleList(dr_id);
		 float tot_jan_sale=0;
		 float tot_feb_sale=0;
		 float tot_mar_sale=0;
		 float tot_apr_sale=0;
		 float tot_may_sale=0;
		 float tot_jun_sale=0;
		 float tot_jul_sale=0;
		 float tot_aug_sale=0;
		 float tot_sep_sale=0;
		 float tot_oct_sale=0;
		 float tot_nov_sale=0;
		 float tot_dec_sale=0;
		for(GetIndividualDoctorSaleDto individualDoctorTotalSaleDto : individualDoctorSaleList)
		{
			tot_jan_sale = tot_jan_sale + individualDoctorTotalSaleDto.getJan_sale();
			tot_feb_sale = tot_feb_sale + individualDoctorTotalSaleDto.getFeb_sale();
			tot_mar_sale = tot_mar_sale + individualDoctorTotalSaleDto.getMar_sale();
			tot_apr_sale = tot_apr_sale + individualDoctorTotalSaleDto.getApr_sale();
			tot_may_sale = tot_may_sale + individualDoctorTotalSaleDto.getMay_sale();
			tot_jun_sale = tot_jun_sale + individualDoctorTotalSaleDto.getJun_sale();
			tot_jul_sale = tot_jul_sale + individualDoctorTotalSaleDto.getJul_sale();
			tot_aug_sale = tot_aug_sale + individualDoctorTotalSaleDto.getAug_sale();
			tot_sep_sale = tot_sep_sale + individualDoctorTotalSaleDto.getSep_sale();
			tot_oct_sale = tot_oct_sale + individualDoctorTotalSaleDto.getOct_sale();
			tot_nov_sale = tot_nov_sale + individualDoctorTotalSaleDto.getNov_sale();
			tot_dec_sale = tot_dec_sale + individualDoctorTotalSaleDto.getDec_sale();
		}
		GetIndividualDoctorTotalSaleDto getIndividualDoctorTotalSaleDto = new GetIndividualDoctorTotalSaleDto();
		getIndividualDoctorTotalSaleDto.setTot_jan_sale(tot_jan_sale);
		getIndividualDoctorTotalSaleDto.setTot_feb_sale(tot_feb_sale);
		getIndividualDoctorTotalSaleDto.setTot_mar_sale(tot_mar_sale);
		getIndividualDoctorTotalSaleDto.setTot_apr_sale(tot_apr_sale);
		getIndividualDoctorTotalSaleDto.setTot_may_sale(tot_may_sale);
		getIndividualDoctorTotalSaleDto.setTot_jun_sale(tot_jun_sale);
		getIndividualDoctorTotalSaleDto.setTot_jul_sale(tot_jul_sale);
		getIndividualDoctorTotalSaleDto.setTot_aug_sale(tot_aug_sale);
		getIndividualDoctorTotalSaleDto.setTot_sep_sale(tot_sep_sale);
		getIndividualDoctorTotalSaleDto.setTot_oct_sale(tot_oct_sale);
		getIndividualDoctorTotalSaleDto.setTot_nov_sale(tot_nov_sale);
		getIndividualDoctorTotalSaleDto.setTot_dec_sale(tot_dec_sale);
		model.addAttribute("individualDoctorSaleList",individualDoctorSaleList);
		model.addAttribute("individualDoctorTotalSaleDto",getIndividualDoctorTotalSaleDto);
		return new ModelAndView("individual_doctor_business_info");
		
	}
	
}
