package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.dto.AddDoctorDto;
import com.javatechie.spring.orm.api.dto.AddDoctorMedicineDto;
import com.javatechie.spring.orm.api.dto.AddUserDoctorDto;
import com.javatechie.spring.orm.api.dto.GetAllDoctorsDto;
import com.javatechie.spring.orm.api.dto.StateDoctorBusinessDto;
import com.javatechie.spring.orm.api.dto.User_DoctorDto;

@Repository
@Transactional
public class DoctorDao {

	@Autowired
	private SessionFactory factory;

	public void saveDoctor(AddDoctorDto adddoctorjson) {

		String qry = "insert into doctor values(null,'" + adddoctorjson.getDoctor_name() + "','"
				+ adddoctorjson.getDoctor_speciality()
				+ "',(select division_state_id from division_state where division_id=" + adddoctorjson.getDivision_id()
				+ " and state_id=" + adddoctorjson.getState_id() + " and headquarter_id="
				+ adddoctorjson.getHeadquarter_id() + "),'" + adddoctorjson.getDoctor_qualification() + "','"
				+ adddoctorjson.getPhone_number() + "','" + adddoctorjson.getAddress() + "')";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		int s1 = sqlQuery.executeUpdate();
	}
	
	public void userDoctorData(AddUserDoctorDto userdoctorjson) {
		
		System.out.println("userdoctorjson : " + userdoctorjson.getSelected());
		
		List c = userdoctorjson.getSelected();
		String arr[] = new String[userdoctorjson.getSelected().size()];

		for(int i=0;i<c.size();i++)
		{
			arr[i] = (String) c.get(i);
		}
		
		for(int j=0;j<arr.length;j++)
		{
		String qry = "insert into user_doctor values(null," + userdoctorjson.getUser_id() + ","+ Integer.parseInt(arr[j]) + ")";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.executeUpdate();
		}	
	}

	@SuppressWarnings("unchecked")
	public List<StateDoctorBusinessDto> getStateDoctorBusiness(String hq_id) {
		int headquarter_id = Integer.parseInt(hq_id);
		String qry = "select doctor_id,doctor_name,doctor_speciality,doctor_qualification from doctor join (select division_state_id from division_state where headquarter_id="+ headquarter_id +") as ref_id on doctor.division_state_id=ref_id.division_state_id;";
		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry).setResultTransformer(Transformers.aliasToBean(StateDoctorBusinessDto.class));
		sqlQuery.addScalar("doctor_id", IntegerType.INSTANCE);
		sqlQuery.addScalar("doctor_name", StringType.INSTANCE);
		sqlQuery.addScalar("doctor_speciality", StringType.INSTANCE);
		sqlQuery.addScalar("doctor_qualification", StringType.INSTANCE);
		return sqlQuery.list();
	}
	
	
	
	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	@SuppressWarnings("unchecked")
	public List<User_DoctorDto> getUserDoctorList(String user_sessionid) {
		System.out.println("user_sessionid :"+user_sessionid);
		int UserId = Integer.parseInt(user_sessionid);
		String qry="select d.doctor_id, doctor_name from doctor as d join (select doctor_id from user_doctor where user_id=" + user_sessionid + " ) as ref_user_id on d.doctor_id=ref_user_id.doctor_id;";
		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry).setResultTransformer(Transformers.aliasToBean(User_DoctorDto.class)); 
		sqlQuery.addScalar("doctor_id", IntegerType.INSTANCE);
		sqlQuery.addScalar("doctor_name", StringType.INSTANCE);
		return sqlQuery.list();
	}

	public List<GetAllDoctorsDto> getAllDoctorsList() {
		String qry = "select doctor_id, doctor_name from doctor;";
		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry).setResultTransformer(Transformers.aliasToBean(GetAllDoctorsDto.class)); 
		sqlQuery.addScalar("doctor_id", IntegerType.INSTANCE);
		sqlQuery.addScalar("doctor_name", StringType.INSTANCE);
		return sqlQuery.list();
	}

	public void doctorMedicineData(AddDoctorMedicineDto doctormedicinejson) {
		
		List selectedMedicine = doctormedicinejson.getSelected();
		String arr[] = new String[doctormedicinejson.getSelected().size()];

		for(int i=0;i<selectedMedicine.size();i++)
		{
			arr[i] = (String) selectedMedicine.get(i);
		}
		
		for(int j=0;j<arr.length;j++)
		{
		String qry = "insert into doctor_medicine values(null," + doctormedicinejson.getDoctor_id() + ","+ Integer.parseInt(arr[j]) + ")";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		sqlQuery.executeUpdate();
		}	
		
	}

	
}
