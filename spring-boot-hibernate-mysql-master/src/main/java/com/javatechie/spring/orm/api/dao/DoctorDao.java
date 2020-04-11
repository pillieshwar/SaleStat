package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.dto.AddDoctorDto;
import com.javatechie.spring.orm.api.dto.AddUserDoctorDto;

@Repository
@Transactional
public class DoctorDao {

	@Autowired
	private SessionFactory factory;

	public void saveDoctor(AddDoctorDto adddoctorjson) {

		String qry = "insert into doctor values(null,'" + adddoctorjson.getDoctor_name() + "','"
				+ adddoctorjson.getDoctor_speciality()
				+ "',(select division_state_id from division_state where division_id=" + adddoctorjson.getDivision_id()
				+ " and state_id=" + adddoctorjson.getState_id() + " and headquarter_id="
				+ adddoctorjson.getHeadquarter_id() + "),'" + adddoctorjson.getDoctor_qualification() + "','"
				+ adddoctorjson.getPhone_number() + "','" + adddoctorjson.getAddress() + "')";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		int s1 = sqlQuery.executeUpdate();
	}
	
	public void userDoctorData(AddUserDoctorDto userdoctorjson) {
		
		System.out.println("userdoctorjson : " + userdoctorjson.getSelected());
		
		List c = userdoctorjson.getSelected();
		String arr[] = new String[userdoctorjson.getSelected().size()];

		for(int i=0;i<c.size();i++)
		{
			arr[i] = (String) c.get(i);
		}
		
		for(int j=0;j<arr.length;j++)
		{
		String qry = "insert into user_doctor values(null," + userdoctorjson.getUser_id() + ","+ Integer.parseInt(arr[j]) + ")";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.executeUpdate();
		}	
	}

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}
}
