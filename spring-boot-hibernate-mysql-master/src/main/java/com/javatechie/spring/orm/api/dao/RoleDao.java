package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.model.division;
import com.javatechie.spring.orm.api.model.doctor;
import com.javatechie.spring.orm.api.model.role;
import com.javatechie.spring.orm.api.model.user;

@Repository
@Transactional
public class RoleDao {

	@Autowired
	private SessionFactory factory;

	@SuppressWarnings("unchecked")
	public List<division> getDivisionList() {
		return getSession().createCriteria(division.class).list();
	}

	@SuppressWarnings("unchecked")
	public List<role> getRoleList() {
		return getSession().createCriteria(role.class).list();
	}

	@SuppressWarnings("unchecked")
	public List<user> getUserList() {
		return getSession().createCriteria(user.class).list();
	}

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	@SuppressWarnings("unchecked")
	public List<doctor> getDoctorList() {
		return getSession().createCriteria(doctor.class).list();
	}

}
