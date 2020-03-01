package com.javatechie.spring.orm.api.dao;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.model.Location;
import com.javatechie.spring.orm.api.model.Login;

@Repository
@Transactional
public class LoginDao {

	@Autowired
	private SessionFactory factory;
	
	public void saveLocation(Login login) {
		getSession().save(login);
	}
	
	public String checkLogin(Login login) {
		String qry = "select * from login where username='"+login.getUsername()+"' and password='"+login.getPassword()+"'";
		String ret;
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);

		sqlQuery.addEntity(Login.class);
		if(sqlQuery.list().size()!=0)
		{
			ret="success";
		}
		else {
			System.out.println(sqlQuery.getFetchSize());
			ret="fail";
		}
		return ret;
		
	}
	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}
}