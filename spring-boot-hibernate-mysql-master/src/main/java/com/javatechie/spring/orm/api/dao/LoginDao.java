package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.dto.LoginDto;
import com.javatechie.spring.orm.api.dto.LoginLocalStorageDto;
import com.javatechie.spring.orm.api.model.Location;
import com.javatechie.spring.orm.api.model.Login;

@Repository
@Transactional
public class LoginDao {

	@Autowired
	private SessionFactory factory;

	public void saveLocation(Login login) {
		getSession().save(login);
	}

	/*public String checkLogin(LoginDto jsonLoginString) {
		String ret;
		String qry = "select * from user where username='" + jsonLoginString.getUsername() + "' and password='"
				+ jsonLoginString.getPassword() + "'";
		
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		//sqlQuery.addEntity(LoginDto.class);
		
		if (sqlQuery.list().size() != 0) {
			ret = "success";
		} else {
			// System.out.println(sqlQuery.getFetchSize());
			ret = "fail";
		}
		return ret;
	}*/
	
	public List<Object> checkLogin(LoginDto jsonLoginString) {
		String ret;
		String qry = "select u.username, u.division_id, u.state_id, u.headquarter_id, r.role_id, r.role_abbr from user as u inner join role as r on u.role_id=r.role_id where username='" + jsonLoginString.getUsername() + "' and password='"
				+ jsonLoginString.getPassword() + "'";
		
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		return sqlQuery.list();
	}

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}
}
