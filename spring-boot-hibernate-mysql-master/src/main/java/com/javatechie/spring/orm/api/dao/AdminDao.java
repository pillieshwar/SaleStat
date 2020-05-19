package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.hibernate.type.StringType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.dto.GetDoctorMedicineDto;
import com.javatechie.spring.orm.api.dto.GetHeadquarterDto;
import com.javatechie.spring.orm.api.model.medicine;
import com.javatechie.spring.orm.api.model.role;
import com.javatechie.spring.orm.api.model.sponsorship;
import com.javatechie.spring.orm.api.model.state;

@Repository
@Transactional
public class AdminDao {

	@Autowired
	private SessionFactory factory;

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	@SuppressWarnings("unchecked")
	public List<sponsorship> getSponsorshipList() {
		return getSession().createCriteria(sponsorship.class).list();
	}

	@SuppressWarnings("unchecked")
	public List<medicine> getMedicineList() {
		return getSession().createCriteria(medicine.class).list();
	}

	@SuppressWarnings("unchecked")
	public List<role> getRoleList() {
		return getSession().createCriteria(role.class).list();
	}

	@SuppressWarnings("unchecked")
	public List<state> getStateList() {
		return getSession().createCriteria(state.class).list();
	}

	@SuppressWarnings("unchecked")
	public List<GetDoctorMedicineDto> getDoctorMedicineList() {
		
		String qry = "select distinct(doctor_name), GROUP_CONCAT(medicine_name) as medicines  from doctor_medicine as dm join doctor as d on dm.doctor_id=d.doctor_id join medicine as m on dm.medicine_id=m.medicine_id group by d.doctor_id;";

		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry)
				.setResultTransformer(Transformers.aliasToBean(GetDoctorMedicineDto.class));
		sqlQuery.addScalar("doctor_name", StringType.INSTANCE);
		sqlQuery.addScalar("medicines", StringType.INSTANCE);
		return sqlQuery.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<GetHeadquarterDto> getHeadquarterList() {
		String qry = "select distinct(state_name), GROUP_CONCAT(headquarter_name) as headquarters  from division_state as ds join state as s on ds.state_id=s.state_id join headquarter as h on ds.headquarter_id=h.headquarter_id group by s.state_id;";
		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry)
				.setResultTransformer(Transformers.aliasToBean(GetHeadquarterDto.class));
		sqlQuery.addScalar("state_name", StringType.INSTANCE);
		sqlQuery.addScalar("headquarters", StringType.INSTANCE);
		return sqlQuery.list();
	}
}
