package com.javatechie.spring.orm.api.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	
	private void dashboardCards()
	{
		
	}
	private void stateDropdown()
	{
		
	}
	private void getDivisionStatePerformance() {
		
	}
	private void getDivisionStateHeads()
	{
		
	}
}
