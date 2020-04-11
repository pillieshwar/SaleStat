package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.dto.UserDoctorDto;
import com.javatechie.spring.orm.api.model.Division;
import com.javatechie.spring.orm.api.model.Doctor;
import com.javatechie.spring.orm.api.model.Role;
import com.javatechie.spring.orm.api.model.User;

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
	
	@SuppressWarnings("unchecked")
	public List<User> getUserList() {
		return getSession().createCriteria(User.class).list();
	}
	
	/*@SuppressWarnings("unchecked")
	public List<UserDoctorDto> getUserList() {
		String qry = "select user_id,username from user";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		return sqlQuery.list();
	}*/
	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	@SuppressWarnings("unchecked")
	public List<Doctor> getDoctorList() {
		return getSession().createCriteria(Doctor.class).list();
	}
	
}
