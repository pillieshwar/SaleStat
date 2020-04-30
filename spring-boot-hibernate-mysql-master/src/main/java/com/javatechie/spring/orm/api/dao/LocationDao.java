package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.dto.HeadquarterListDto;
import com.javatechie.spring.orm.api.dto.LocationDto;
import com.javatechie.spring.orm.api.model.headquarter;
import com.javatechie.spring.orm.api.model.location;

@Repository
@Transactional
public class LocationDao {
	@Autowired
	private SessionFactory factory;

//	public void saveLocation(Location location) {
//		getSession().save(location);
//	}
	
/*	@SuppressWarnings("unchecked")
	public List<LocationDto> getAllLocations() {
		return getSession().createSQLQuery("select * from Location").list();
	}*/
	
	@SuppressWarnings("unchecked")
	public List<LocationDto> getAllLocations() {
	String qry = "select * from Location";
	SQLQuery sqlQuery = getSession().createSQLQuery(qry);

	sqlQuery.addEntity(location.class);

	return sqlQuery.list();
	}
	
	public List<HeadquarterListDto> getStateSalesMonth(String month) {
		System.out.println("query---------->"+month);
		String qry="";
		if(month.equals("01"))
		{
			 qry = "select * from Location";
			 System.out.println("inside jan");
		}
		else
			if(month.equals("02"))
			{
				 qry = "select * from Location where id=2";
				 System.out.println("inside jan");
			}
			else
				if(month.equals("03"))
				{
					 qry = "select * from Location where id=3";
					 System.out.println("inside jan");
				}
				else
					if(month.equals("04"))
					{
						 qry = "select * from Location where id=4";
						 System.out.println("inside jan");
					}
					else
						if(month.equals("05"))
						{
							 qry = "select * from Location where id=5";
							 System.out.println("inside jan");
						}
						else
							if(month.equals("06"))
							{
								 qry = "select * from Location where id<6";
								 System.out.println("inside jan");
							}
							else
		{
			qry = "select * from headquarter where state_id="+month;
			System.out.println("outside jan");
		}
		
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);

		sqlQuery.addEntity(headquarter.class);

		return sqlQuery.list();
		}

	@SuppressWarnings("unchecked")
	public List<LocationDto> getLocations() {
		return getSession().createCriteria(location.class).list();
	}
	public void saveLocation(location location) {
		getSession().save(location);
	}
	
	public void insertLocation(location location)
	{
		String qry = "insert into Location values(null,'"+location.getState()+"','"+location.getRegion()+"')";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);

		sqlQuery.executeUpdate();
		getSession().save(location);
	}
	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

}
