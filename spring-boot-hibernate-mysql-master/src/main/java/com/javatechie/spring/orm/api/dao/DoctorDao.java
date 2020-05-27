package com.javatechie.spring.orm.api.dao;

import java.util.Calendar;
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
import com.javatechie.spring.orm.api.dto.GetSidebarAllDoctorsDto;
import com.javatechie.spring.orm.api.dto.StateDoctorBusinessDto;
import com.javatechie.spring.orm.api.dto.User_DoctorDto;

@Repository
@Transactional
public class DoctorDao {

	@Autowired
	private SessionFactory factory;

	@SuppressWarnings("unused")
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

	@SuppressWarnings("rawtypes")
	public void userDoctorData(AddUserDoctorDto userdoctorjson) {

		System.out.println("userdoctorjson : " + userdoctorjson.getSelected());

		List c = userdoctorjson.getSelected();
		String arr[] = new String[userdoctorjson.getSelected().size()];

		for (int i = 0; i < c.size(); i++) {
			arr[i] = (String) c.get(i);
		}

		for (int j = 0; j < arr.length; j++) {
			String qry = "insert into user_doctor values(null," + userdoctorjson.getUser_id() + ","
					+ Integer.parseInt(arr[j]) + ")";
			SQLQuery sqlQuery = getSession().createSQLQuery(qry);
			sqlQuery.executeUpdate();
		}
	}

	@SuppressWarnings("unchecked")
	public List<StateDoctorBusinessDto> getStateDoctorBusiness(String hq_id, String state_sessionid,
			String user_sessionid, String start, String end) {
		
		String arr[] = new String[] { "jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov",
		"dec" };
String query_str = "coalesce(jan_sale,0)+coalesce(feb_sale,0)+coalesce(mar_sale,0)+coalesce(apr_sale,0)+coalesce(may_sale,0)+coalesce(jun_sale,0)+coalesce(jul_sale,0)+coalesce(aug_sale,0)+coalesce(sep_sale,0)+coalesce(oct_sale,0)+coalesce(nov_sale,0)+coalesce(dec_sale,0)";
String start_query_str = "";
String end_query_str = "";

int year = Calendar.getInstance().get(Calendar.YEAR);
int flag = 0;
int startYear = 0;
int endYear = 0;
if (!start.equals("0")) {
	query_str = "";
	String start_year = start.substring(0, 4);
	String end_year = end.substring(0, 4);
	String temp_start_month = start.substring(5, 7);
	String temp_end_month = end.substring(5, 7);

	int start_month = Integer.parseInt(temp_start_month);
	int end_month = Integer.parseInt(temp_end_month);

	if (start_year.equals(end_year)) {
		year = Integer.parseInt(start_year);
		for (int i = start_month - 1; i < end_month; i++) {
			query_str = query_str + "coalesce(" + arr[i] + "_sale,0)+";
		}
		int leng = query_str.length();
		System.out.println(query_str.substring(0, leng - 1));
		query_str = query_str.substring(0, leng - 1);
	} else {
		flag = 1;
		startYear = Integer.parseInt(start_year);
		endYear = Integer.parseInt(end_year);

		for (int i = start_month - 1; i < 12; i++) {
			start_query_str = start_query_str + "coalesce(" + arr[i] + "_sale,0)+";
		}
		int leng = start_query_str.length();
		start_query_str = start_query_str.substring(0, leng - 1);

		for (int i = 0; i < end_month; i++) {
			end_query_str = end_query_str + "coalesce(" + arr[i] + "_sale,0)+";
		}
		int lengt = end_query_str.length();
		end_query_str = end_query_str.substring(0, lengt - 1);

	}

}

		int headquarter_id = Integer.parseInt(hq_id);
		int stateId = Integer.parseInt(state_sessionid);
		int userId = Integer.parseInt(user_sessionid);
		String qry = "";
		if (stateId < 9000) {
			qry = "select d.doctor_id,d.doctor_name,d.doctor_speciality,d.doctor_qualification from doctor d\r\n"
					+ "join division_state ds on d.division_state_id=ds.division_state_id\r\n"
					+ "join user_doctor ud on d.doctor_id=ud.doctor_id\r\n" + "where ds.headquarter_id="
					+ headquarter_id + " and ud.user_id=" + userId;
		} else {
			if (flag == 0) {
			qry = "select d.doctor_id, d.doctor_name, sum("+query_str+") as generated_sale from doctor d\r\n" + 
					"join division_state ds on ds.division_state_id=d.division_state_id \r\n" + 
					"join doctor_medicine dm on dm.doctor_id=d.doctor_id\r\n" + 
					"join doctor_sale docs on docs.doctor_medicine_id=dm.doctor_medicine_id\r\n" + 
					"where ds.headquarter_id="+headquarter_id+" and docs.year="+year+" group by d.doctor_id;";
			}
			else
				if (flag == 1) {
					qry = "SELECT doctor_id as doctor_id, doctor_name, SUM(gen_sale) AS generated_sale FROM\r\n" + 
							"(select d.doctor_id, d.doctor_name, sum("+start_query_str+") as gen_sale from doctor d join division_state ds on ds.division_state_id=d.division_state_id join doctor_medicine dm on dm.doctor_id=d.doctor_id join doctor_sale docs on docs.doctor_medicine_id=dm.doctor_medicine_id where ds.headquarter_id="+headquarter_id+" and docs.year=" + startYear + " group by d.doctor_id\r\n" + 
							"union \r\n" + 
							"select d.doctor_id, d.doctor_name, sum("+end_query_str+") as gen_sale from doctor d join division_state ds on ds.division_state_id=d.division_state_id join doctor_medicine dm on dm.doctor_id=d.doctor_id join doctor_sale docs on docs.doctor_medicine_id=dm.doctor_medicine_id where ds.headquarter_id="+headquarter_id+" and docs.year=" + endYear + " group by d.doctor_id)\r\n" + 
							"as combined GROUP BY doctor_id;";
					}
		}

		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry)
				.setResultTransformer(Transformers.aliasToBean(StateDoctorBusinessDto.class));
		sqlQuery.addScalar("doctor_id", IntegerType.INSTANCE);
		sqlQuery.addScalar("doctor_name", StringType.INSTANCE);
		sqlQuery.addScalar("generated_sale", FloatType.INSTANCE);
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
		System.out.println("user_sessionid :" + user_sessionid);
		String qry = "select d.doctor_id, doctor_name from doctor as d join (select doctor_id from user_doctor where user_id="
				+ user_sessionid + " ) as ref_user_id on d.doctor_id=ref_user_id.doctor_id;";
		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry)
				.setResultTransformer(Transformers.aliasToBean(User_DoctorDto.class));
		sqlQuery.addScalar("doctor_id", IntegerType.INSTANCE);
		sqlQuery.addScalar("doctor_name", StringType.INSTANCE);
		return sqlQuery.list();
	}

	@SuppressWarnings("unchecked")
	public List<GetAllDoctorsDto> getAllDoctorsList() {
		String qry = "select doctor_id, doctor_name from doctor;";
		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry)
				.setResultTransformer(Transformers.aliasToBean(GetAllDoctorsDto.class));
		sqlQuery.addScalar("doctor_id", IntegerType.INSTANCE);
		sqlQuery.addScalar("doctor_name", StringType.INSTANCE);
		return sqlQuery.list();
	}

	@SuppressWarnings("rawtypes")
	public void doctorMedicineData(AddDoctorMedicineDto doctormedicinejson) {

		List selectedMedicine = doctormedicinejson.getSelected();
		String arr[] = new String[doctormedicinejson.getSelected().size()];

		for (int i = 0; i < selectedMedicine.size(); i++) {
			arr[i] = (String) selectedMedicine.get(i);
		}

		for (int j = 0; j < arr.length; j++) {
			String qry = "insert into doctor_medicine values(null," + doctormedicinejson.getDoctor_id() + ","
					+ Integer.parseInt(arr[j]) + ")";
			SQLQuery sqlQuery = getSession().createSQLQuery(qry);
			sqlQuery.executeUpdate();
		}

	}

	@SuppressWarnings("unchecked")
	public List<GetIndividualDoctorSaleDto> getIndividualDoctorSaleList(String dr_id, String yr) {
		int year = Integer.parseInt(yr);
		if (year == 0) {
			year = Calendar.getInstance().get(Calendar.YEAR);
		}
		int doctorId = Integer.parseInt(dr_id);
		String qry = "select ds.doctor_sale_id, m.medicine_name, ds.year, COALESCE(ds.jan_sale, 0) as jan_sale, COALESCE(ds.feb_sale, 0) as feb_sale, COALESCE(ds.mar_sale, 0) as mar_sale, COALESCE(ds.apr_sale, 0) as apr_sale, COALESCE(ds.may_sale, 0) as may_sale, COALESCE(ds.jun_sale, 0) as jun_sale, COALESCE(ds.jul_sale, 0) as jul_sale, COALESCE(ds.aug_sale, 0) as aug_sale, COALESCE(ds.sep_sale, 0) as sep_sale, COALESCE(ds.oct_sale, 0) as oct_sale, COALESCE(ds.nov_sale, 0) as nov_sale, COALESCE(ds.dec_sale, 0) as dec_sale from doctor_sale ds join doctor_medicine dm on dm.doctor_medicine_id=ds.doctor_medicine_id join medicine m on m.medicine_id=dm.medicine_id where ds.year="
				+ year + " and dm.doctor_id=" + doctorId;
		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry)
				.setResultTransformer(Transformers.aliasToBean(GetIndividualDoctorSaleDto.class));
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

	@SuppressWarnings("unchecked")
	public List<GetSidebarAllDoctorsDto> getSidebarAllDoctorsList() {
		String qry = "select  d.doctor_id, doctor_name, state_name as state, headquarter_name as headquarter,username as mr,GROUP_CONCAT(distinct(medicine_name)) as medicines, division_name as division, doctor_speciality from doctor as d\r\n"
				+ "join division_state as ds on ds.division_state_id=d.division_state_id\r\n"
				+ "join state as s on s.state_id=ds.state_id\r\n"
				+ "join headquarter as h on h.headquarter_id=ds.headquarter_id\r\n"
				+ "join division as divs on divs.division_id=ds.division_id\r\n"
				+ "join doctor_medicine as dm on dm.doctor_id=d.doctor_id\r\n"
				+ "join medicine as m on m.medicine_id=dm.medicine_id\r\n"
				+ "join user_doctor as ud on ud.doctor_id=d.doctor_id\r\n"
				+ "join user as u on u.user_id=ud.user_id\r\n" + "group by d.doctor_id;";
		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry)
				.setResultTransformer(Transformers.aliasToBean(GetSidebarAllDoctorsDto.class));
		sqlQuery.addScalar("doctor_id", IntegerType.INSTANCE);
		sqlQuery.addScalar("doctor_name", StringType.INSTANCE);
		sqlQuery.addScalar("state", StringType.INSTANCE);
		sqlQuery.addScalar("headquarter", StringType.INSTANCE);
		sqlQuery.addScalar("mr", StringType.INSTANCE);
		sqlQuery.addScalar("medicines", StringType.INSTANCE);
		sqlQuery.addScalar("division", StringType.INSTANCE);
		sqlQuery.addScalar("doctor_speciality", StringType.INSTANCE);
		return sqlQuery.list();
	}
}
