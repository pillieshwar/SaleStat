package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.model.person;

@Repository
@Transactional
public class PersonDao {

	@Autowired
	private SessionFactory factory;

	public void savePerson(person person) {
		getSession().save(person);
	}
	
	@SuppressWarnings("unchecked")
	public List<person> getFewPersons() {
		return getSession().createSQLQuery("select * from person where id<2").list();
	}

	@SuppressWarnings("unchecked")
	public List<person> getPersons() {
		return getSession().createCriteria(person.class).list();
	}

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

}
