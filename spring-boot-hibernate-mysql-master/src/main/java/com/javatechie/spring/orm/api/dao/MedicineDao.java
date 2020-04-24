package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.dto.DynamicMedicineDropdownDto;
import com.javatechie.spring.orm.api.dto.GetAllDoctorsDto;
import com.javatechie.spring.orm.api.dto.GetAllMedicinesDto;
import com.javatechie.spring.orm.api.dto.GetUserDoctorMedicineDto;
import com.javatechie.spring.orm.api.dto.HeadquarterListDto;
import com.javatechie.spring.orm.api.dto.User_DoctorDto;
import com.javatechie.spring.orm.api.model.Headquarter;
import com.javatechie.spring.orm.api.model.Medicine;
import com.javatechie.spring.orm.api.model.Role;
import com.javatechie.spring.orm.api.model.Sponsorship;

@Repository
@Transactional
public class MedicineDao {

	@Autowired
	private SessionFactory factory;

	public void saveMedicine(Medicine medicinejson) {
		String qry = "insert into medicine values(null,'" + medicinejson.getMedicine_name() + "',"
				+ medicinejson.getMedicine_price() + ")";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		int s = sqlQuery.executeUpdate();
		System.out.println("executed query");
		System.out.println(s);
	}

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	public void saveSponsorship(Sponsorship sponsorshipjson) {
		String qry = "insert into sponsorship values(null,'" + sponsorshipjson.getSponsorship_nature() + "'" + ")";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		int s = sqlQuery.executeUpdate();
		System.out.println("executed query");
		System.out.println(s);
	}

	public void saveRole(Role rolejson) {

		String qry = "insert into role values(null,'" + rolejson.getRole_name() + "','" + rolejson.getRole_abbr()
				+ "')";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		int s = sqlQuery.executeUpdate();
		System.out.println("executed query");
		System.out.println(s);
	}

	@SuppressWarnings("unchecked")
	public List<Medicine> getUserDoctorMedicineList(int doctorId) {
		String qry = "select * from medicine join (select medicine_id from doctor_medicine where doctor_id=" + doctorId
				+ ") as ref_medicine_id on ref_medicine_id.medicine_id=medicine.medicine_id;";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.addEntity(Medicine.class);
		return sqlQuery.list();
	}

	public List<GetAllMedicinesDto> getAllMedicinesList() {
		String qry = "select medicine_id, medicine_name from medicine;";
		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry)
				.setResultTransformer(Transformers.aliasToBean(GetAllMedicinesDto.class));
		sqlQuery.addScalar("medicine_id", IntegerType.INSTANCE);
		sqlQuery.addScalar("medicine_name", StringType.INSTANCE);
		return sqlQuery.list();
	}

	public List<Medicine> dynamicMedicineDropdown(DynamicMedicineDropdownDto medicinedropdownjson) {
		List<Medicine> x = getSession().createSQLQuery("select m.medicine_id, m.medicine_name, m.medicine_price from medicine as m join (select medicine_id from doctor_medicine where doctor_id="  + medicinedropdownjson.getDoctor_id() + ") as ref_medicine_id on ref_medicine_id.medicine_id=m.medicine_id;")
				.list();
		return x;

	}

}
