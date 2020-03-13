package com.javatechie.spring.orm.api.dao;

import java.io.Serializable;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.model.Headquarter;


@Repository
@Transactional
public class HeadquarterDao {

	@Autowired
	private SessionFactory factory;

	public void saveHeadquarter(Headquarter headquarter) {
		String qry = "insert into headquarter values(null,'"+headquarter.getHeadquarter_name()+"',"+headquarter.getState_id()+")";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		int s = sqlQuery.executeUpdate();
		System.out.println("executed query");
		System.out.println(s);
		
	}
	
//	@SuppressWarnings("unchecked")
//	public List<Headquarter> getHeadquarterList() {
//		return getSession().createCriteria(Headquarter.class).list();
//	}
	
	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}
}
