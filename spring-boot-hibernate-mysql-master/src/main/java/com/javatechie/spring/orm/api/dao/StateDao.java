package com.javatechie.spring.orm.api.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.model.headquarter;
import com.javatechie.spring.orm.api.model.state;

@Repository
@Transactional
public class StateDao {

	@Autowired
	private SessionFactory factory;

	public Serializable saveState(state state) {
		Serializable ret = getSession().save(state);
		return ret;
	}

	@SuppressWarnings("unchecked")
	public List<state> getStateList() {
		return getSession().createCriteria(state.class).list();
	}

	@SuppressWarnings("unchecked")
	public List<state> getUserStateList(String state_sessionid) {

		int stateId = Integer.parseInt(state_sessionid);
		String qry = "select * from state where state_id=" + stateId;
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.addEntity(state.class);
		return sqlQuery.list();
	}

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	@SuppressWarnings("unchecked")
	public List<headquarter> getUserHeadquarterList(String headquarter_sessionid) {
		int headquarterId = Integer.parseInt(headquarter_sessionid);
		String qry = "select * from headquarter where headquarter_id=" + headquarterId;
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.addEntity(headquarter.class);
		return sqlQuery.list();
	}
}
