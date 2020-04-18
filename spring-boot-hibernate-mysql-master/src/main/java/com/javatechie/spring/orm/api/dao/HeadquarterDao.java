package com.javatechie.spring.orm.api.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.dto.DivisionStateDto;
import com.javatechie.spring.orm.api.dto.DynamicHeadquarterDropdownDto;
import com.javatechie.spring.orm.api.dto.HeadquarterListDto;
import com.javatechie.spring.orm.api.model.Headquarter;
import com.javatechie.spring.orm.api.model.Location;

@Repository
@Transactional
public class HeadquarterDao {

	@Autowired
	private SessionFactory factory;

	/*public void saveHeadquarter(Headquarter headquarter) {
		String qry = "insert into headquarter values(null,'" + headquarter.getHeadquarter_name() + "',"
				+ headquarter.getState_id() + ")";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		int s = sqlQuery.executeUpdate();
		System.out.println("executed query");
		System.out.println(s);
	}*/

	public void saveHeadquarter(DivisionStateDto headquarterjson) {
		String qry = "insert into headquarter values(null,'" + headquarterjson.getHeadquarter_name() + "',"
				+ headquarterjson.getState_id() + ")";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		int s = sqlQuery.executeUpdate();
		
		String qry_division_state = "insert into division_state values(null," + headquarterjson.getDivision_id() + ","
				+ headquarterjson.getState_id() + ",(select headquarter_id from headquarter where headquarter_name='" + headquarterjson.getHeadquarter_name() + "'))";
		SQLQuery sqlQuery_division_state = getSession().createSQLQuery(qry_division_state);
		int s1 = sqlQuery_division_state.executeUpdate();
	}
	
	private void saveDivisionState(Headquarter headquarter) {
		
	}

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	@SuppressWarnings("unchecked")
	public List<HeadquarterListDto> headquarterList(String state_id, int headquarter_id) {
		String qry = "";
		if(headquarter_id==0)
		{
			qry = "select * from headquarter where state_id=" + state_id;
		}
		else
		{
			qry = "select * from headquarter where state_id=" + state_id + " and headquarter_id=" + headquarter_id;
		}
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.addEntity(Headquarter.class);
		return sqlQuery.list();
	}

	@SuppressWarnings("unchecked")
	public List<Headquarter> dynamicHeadquarterDropdown(Headquarter headquarterdropdownjson) {
		List<Headquarter> x = getSession().createSQLQuery(
				"select headquarter_id,headquarter_name from headquarter where state_id=" + headquarterdropdownjson.getState_id())
				.list();
		return x;
	}
}
