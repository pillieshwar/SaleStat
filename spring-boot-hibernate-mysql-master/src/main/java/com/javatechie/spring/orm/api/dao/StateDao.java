package com.javatechie.spring.orm.api.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	
	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}
}
