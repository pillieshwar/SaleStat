package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.model.division;

@Repository
@Transactional
public class DivisionDao {

	@Autowired
	private SessionFactory factory;
	
	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	@SuppressWarnings("unchecked")
	public List<division> getDivisionList(String division_sessionid) {
		
		int divisionId = Integer.parseInt(division_sessionid);
		String qry="select * from division where division_id="+ divisionId;
		SQLQuery sqlQuery = getSession().createSQLQuery(qry); 
		sqlQuery.addEntity(division.class);
		return sqlQuery.list();
	}
}
