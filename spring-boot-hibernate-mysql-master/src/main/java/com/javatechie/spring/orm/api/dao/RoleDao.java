package com.javatechie.spring.orm.api.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.model.Division;
import com.javatechie.spring.orm.api.model.Role;
import com.javatechie.spring.orm.api.model.State;

@Repository
@Transactional
public class RoleDao {

	@Autowired
	private SessionFactory factory;

//	public Serializable saveState(State state) {
//		Serializable ret = getSession().save(state);
//		return ret;
//	}
	@SuppressWarnings("unchecked")
	public List<Division> getDivisionList() {
		return getSession().createCriteria(Division.class).list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Role> getRoleList() {
		return getSession().createCriteria(Role.class).list();
	}
	
	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}
	
}
