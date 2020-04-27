package com.javatechie.spring.orm.api.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.hibernate.type.FloatType;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.javatechie.spring.orm.api.dto.AddDoctorDto;
import com.javatechie.spring.orm.api.dto.AddDoctorMedicineDto;
import com.javatechie.spring.orm.api.dto.AddUserDoctorDto;
import com.javatechie.spring.orm.api.dto.GetAllDoctorsDto;
import com.javatechie.spring.orm.api.dto.GetIndividualDoctorSaleDto;
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
	public List<StateDoctorBusinessDto> getStateDoctorBusiness(String hq_id, String state_sessionid, String user_sessionid) {
		int headquarter_id = Integer.parseInt(hq_id);
		int stateId = Integer.parseInt(state_sessionid);
		int userId = Integer.parseInt(user_sessionid);
		String qry = "";
		if(stateId<9000)
		{
		qry = "select d.doctor_id,d.doctor_name,d.doctor_speciality,d.doctor_qualification from doctor d\r\n" + 
				"join division_state ds on d.division_state_id=ds.division_state_id\r\n" + 
				"join user_doctor ud on d.doctor_id=ud.doctor_id\r\n" + 
				"where ds.headquarter_id="+headquarter_id+" and ud.user_id="+userId;
		}
		else {
			qry = "select distinct(d.doctor_id),d.doctor_name,d.doctor_speciality,d.doctor_qualification from doctor d\r\n" + 
					"join division_state ds on d.division_state_id=ds.division_state_id\r\n" +
					"where ds.headquarter_id="+headquarter_id;
			}
		
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

	@SuppressWarnings("unchecked")
	public List<GetIndividualDoctorSaleDto> getIndividualDoctorSaleList(String dr_id) {
		int doctorId = Integer.parseInt(dr_id);
		String qry = "select ds.doctor_sale_id, m.medicine_name, ds.year, COALESCE(ds.jan_sale, 0) as jan_sale, COALESCE(ds.feb_sale, 0) as feb_sale, COALESCE(ds.mar_sale, 0) as mar_sale, COALESCE(ds.apr_sale, 0) as apr_sale, COALESCE(ds.may_sale, 0) as may_sale, COALESCE(ds.jun_sale, 0) as jun_sale, COALESCE(ds.jul_sale, 0) as jul_sale, COALESCE(ds.aug_sale, 0) as aug_sale, COALESCE(ds.sep_sale, 0) as sep_sale, COALESCE(ds.oct_sale, 0) as oct_sale, COALESCE(ds.nov_sale, 0) as nov_sale, COALESCE(ds.dec_sale, 0) as dec_sale from doctor_sale ds join doctor_medicine dm on dm.doctor_medicine_id=ds.doctor_medicine_id join medicine m on m.medicine_id=dm.medicine_id where dm.doctor_id="+doctorId;
		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry).setResultTransformer(Transformers.aliasToBean(GetIndividualDoctorSaleDto.class)); 
		sqlQuery.addScalar("doctor_sale_id", IntegerType.INSTANCE);
		sqlQuery.addScalar("medicine_name", StringType.INSTANCE);
		sqlQuery.addScalar("year", StringType.INSTANCE);
		sqlQuery.addScalar("jan_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("feb_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("mar_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("apr_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("may_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("jan_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("jul_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("aug_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("sep_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("oct_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("nov_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("dec_sale", FloatType.INSTANCE);
		return sqlQuery.list();
	}
}
