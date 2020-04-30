package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.dto.LocationDto;
import com.javatechie.spring.orm.api.model.doctordetails;
import com.javatechie.spring.orm.api.model.location;

@Repository
@Transactional
public class DoctorDataEntryDao {
	@Autowired
	private SessionFactory factory;

	@SuppressWarnings("unchecked")
	public List<LocationDto> getAllLocations() {
		String qry = "select * from Location";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.addEntity(location.class);
		return sqlQuery.list();
	}

	@SuppressWarnings("unchecked")
	public List<doctordetails> getAllDoctorData() {
		String qry = "select * from doctordetails";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.addEntity(doctordetails.class);
		return sqlQuery.list();
	}

	public void insertDoctorDetails(doctordetails doctorDetails) {
		String qry = "insert into Location values(2,'" + doctorDetails.getDoctor_name() + "','"
				+ doctorDetails.getMr_name() + "','" + doctorDetails.getMr_hq() + "','" + doctorDetails.getAsm_name()
				+ "','" + doctorDetails.getRegion() + "','" + doctorDetails.getDivision() + "','"
				+ doctorDetails.getMode_of_disbursement() + "','" + doctorDetails.getMonth() + "','"
				+ doctorDetails.getAmount() + "','" + doctorDetails.getSponsorship() + "','"
				+ doctorDetails.getAvg_per_month_business() + "')";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	public List<LocationDto> getLocations() {
		return getSession().createCriteria(location.class).list();
	}

	public void saveLocation(location location) {
		getSession().save(location);
	}

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

}
