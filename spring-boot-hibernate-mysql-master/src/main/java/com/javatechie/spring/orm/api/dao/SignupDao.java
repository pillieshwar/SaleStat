package com.javatechie.spring.orm.api.dao;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.model.Login;
import com.javatechie.spring.orm.api.model.Signup;

@Repository
@Transactional
public class SignupDao {

	@Autowired
	private SessionFactory factory;

	public void saveLocation(Login login) {
		getSession().save(login);
	}

	public String signupUser(Signup signup) {
		String qry = "insert into user values(null,"+signup.getRole_id()+",'"+signup.getUsername()+"','"+signup.getPassword()+"',"+signup.getDivision_id()+","+signup.getState_id()+","+signup.getHeadquarter_id()+","+signup.getDoctor_id()+","+signup.getReporting_to()+")";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		int s = sqlQuery.executeUpdate();
		System.out.println(s);
		return "success";
	}

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}
}
