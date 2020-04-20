package com.javatechie.spring.orm.api.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.model.Division;
import com.javatechie.spring.orm.api.model.Headquarter;
import com.javatechie.spring.orm.api.model.State;

@Repository
@Transactional
public class StateDao {

	@Autowired
	private SessionFactory factory;

	public Serializable saveState(State state) {
		Serializable ret = getSession().save(state);
		return ret;
	}
	
	@SuppressWarnings("unchecked")
	public List<State> getStateList() {
		return getSession().createCriteria(State.class).list();
	}
	
	@SuppressWarnings("unchecked")
	public List<State> getUserStateList(String state_sessionid) {
		
		int stateId = Integer.parseInt(state_sessionid);
		String qry="select * from state where state_id="+ stateId;
		SQLQuery sqlQuery = getSession().createSQLQuery(qry); 
		sqlQuery.addEntity(State.class);
		return sqlQuery.list();
	}
	
	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	public List<Headquarter> getUserHeadquarterList(String headquarter_sessionid) {
		int headquarterId = Integer.parseInt(headquarter_sessionid);
		String qry="select * from headquarter where headquarter_id="+ headquarterId;
		SQLQuery sqlQuery = getSession().createSQLQuery(qry); 
		sqlQuery.addEntity(Headquarter.class);
		return sqlQuery.list();
	}
}
