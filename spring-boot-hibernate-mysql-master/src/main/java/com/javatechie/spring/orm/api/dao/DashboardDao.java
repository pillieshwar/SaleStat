package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.model.state;

@Repository
@Transactional
public class DashboardDao {

	@Autowired
	private SessionFactory factory;

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	@SuppressWarnings("unused")
	private void dashboardCards() {

	}

	@SuppressWarnings("unchecked")
	public List<state> stateDropdown(state statedropdownjson) {
		System.out.println("statedropdown : " + statedropdownjson.getState_id());
		String qry = "select * from state where state_id=" + statedropdownjson.getState_id();
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.addEntity(state.class);
		return sqlQuery.list();
	}

	@SuppressWarnings("unchecked")
	public List<state> stateDropdown1(int state_id) {
		String qry = "";

		if (state_id == 9999) {
			qry = "select * from state";
		} else {
			qry = "select * from state where state_id=" + state_id;
		}

		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.addEntity(state.class);
		return sqlQuery.list();
	}

	@SuppressWarnings("unused")
	private void getDivisionStatePerformance() {

	}

	@SuppressWarnings("unused")
	private void getDivisionStateHeads() {

	}
}
