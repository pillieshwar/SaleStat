package com.javatechie.spring.orm.api.dao;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.dto.AddDataEntryDto;
import com.javatechie.spring.orm.api.dto.GetAllDoctorsDto;

@Repository
@Transactional
public class DataEntryDao {

	@Autowired
	private SessionFactory factory;

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	public String addDataEntry(AddDataEntryDto dataEntry) {
		String qry = "select count(doctor_sale_id) as count from doctor_sale as ds join (select doctor_medicine_id from doctor_medicine where doctor_id="+dataEntry.getDoctor_id()+" and medicine_id="+dataEntry.getMedicine_id()+") as ref_dm_id on ref_dm_id.doctor_medicine_id=ds.doctor_medicine_id;";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
//		System.out.println("ans : " + sqlQuery.list().get(0).toString());
		String doctor_medicine_qry = "select doctor_medicine_id from doctor_medicine where doctor_id="+dataEntry.getDoctor_id()+" and medicine_id="+dataEntry.getMedicine_id();
		SQLQuery sqlQuery1 = getSession().createSQLQuery(doctor_medicine_qry);
		String doctor_medicine_id = sqlQuery1.list().get(0).toString();
		String month_sale = dataEntry.getMonth()+"_sale";
		String month_entered = dataEntry.getMonth()+"_entered";
		System.out.println("doctor_medicine_id : " +doctor_medicine_id);
		System.out.println("month : " +month_sale);
		System.out.println("month_entered : " +month_entered);
		if(sqlQuery.list().get(0).toString().equals("0"))
		{
			String insertqry = "insert into doctor_sale (doctor_medicine_id,"+month_sale+",year,"+month_entered+") values ("+doctor_medicine_id+","+dataEntry.getMedicine_pieces()+","+dataEntry.getYear()+","+dataEntry.getMedicine_amount()+")";
			SQLQuery sqlQuery2 = getSession().createSQLQuery(insertqry);
			sqlQuery2.executeUpdate();
		}
		return "success";		
	}
}
