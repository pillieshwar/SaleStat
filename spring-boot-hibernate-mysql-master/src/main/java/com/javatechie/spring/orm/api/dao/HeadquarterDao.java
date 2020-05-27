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

import com.javatechie.spring.orm.api.dto.DivisionStateDto;
import com.javatechie.spring.orm.api.dto.GetHeadquarterTotalSaleDto;
import com.javatechie.spring.orm.api.model.headquarter;

@Repository
@Transactional
public class HeadquarterDao {

	@Autowired
	private SessionFactory factory;

	/*
	 * public void saveHeadquarter(Headquarter headquarter) { String qry =
	 * "insert into headquarter values(null,'" + headquarter.getHeadquarter_name() +
	 * "'," + headquarter.getState_id() + ")"; SQLQuery sqlQuery =
	 * getSession().createSQLQuery(qry); int s = sqlQuery.executeUpdate();
	 * System.out.println("executed query"); System.out.println(s); }
	 */

	@SuppressWarnings("unused")
	public void saveHeadquarter(DivisionStateDto headquarterjson) {
		String qry = "insert into headquarter values(null,'" + headquarterjson.getHeadquarter_name() + "',"
				+ headquarterjson.getState_id() + ")";
		SQLQuery sqlQuery = getSession().createSQLQuery(qry);
		int s = sqlQuery.executeUpdate();

		String qry_division_state = "insert into division_state values(null," + headquarterjson.getDivision_id() + ","
				+ headquarterjson.getState_id() + ",(select headquarter_id from headquarter where headquarter_name='"
				+ headquarterjson.getHeadquarter_name() + "'))";
		SQLQuery sqlQuery_division_state = getSession().createSQLQuery(qry_division_state);
		int s1 = sqlQuery_division_state.executeUpdate();
	}

	private Session getSession() {
		Session session = factory.getCurrentSession();
		if (session == null) {
			session = factory.openSession();
		}
		return session;
	}

	@SuppressWarnings("unchecked")
	public List<GetHeadquarterTotalSaleDto> headquarterList(String state_id, int headquarter_id, String start,
			String end) {
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
		String qry = "";
		if (headquarter_id == 0) // for admin the headquarter id will be 0. so he willbe able to see all the
									// headquarters for that state
		{
			if (flag == 0) {
				qry = "select count(distinct(d.doctor_id)) as doctor_count, ds.headquarter_id, h.headquarter_name, sum("
						+ query_str + ") as headquarter_total_sale from doctor d\r\n"
						+ "join division_state ds on ds.division_state_id = d. division_state_id\r\n"
						+ "join doctor_medicine dm on dm.doctor_id = d.doctor_id\r\n"
						+ "join doctor_sale docs on docs.doctor_medicine_id = dm.doctor_medicine_id\r\n"
						+ "join headquarter h on h.headquarter_id = ds.headquarter_id\r\n" + "where ds.state_id="
						+ state_id + " and docs.year=" + year + " GROUP BY ds.headquarter_id";
			} else if (flag == 1) {
				qry = "SELECT doctor_id as doctor_count, headquarter_id,headquarter_name, SUM(headquarter_total_sale) AS headquarter_total_sale\r\n"
						+ "FROM\r\n" + " ( \r\n"
						+ "select count(distinct(d.doctor_id)) as doctor_id, ds.headquarter_id, h.headquarter_name, sum("
						+ start_query_str
						+ ") as headquarter_total_sale from doctor d join division_state ds on ds.division_state_id = d.division_state_id join doctor_medicine dm on dm.doctor_id = d.doctor_id join doctor_sale docs on docs.doctor_medicine_id = dm.doctor_medicine_id join headquarter h on h.headquarter_id = ds.headquarter_id where ds.state_id= "
						+ state_id + " and docs.year=" + startYear + "  GROUP BY ds.headquarter_id\r\n" + "union \r\n"
						+ "select count(distinct(d.doctor_id)) as doctor_id, ds.headquarter_id, h.headquarter_name, sum("
						+ end_query_str
						+ ") as headquarter_total_sale1 from doctor d join division_state ds on ds.division_state_id = d.division_state_id join doctor_medicine dm on dm.doctor_id = d.doctor_id join doctor_sale docs on docs.doctor_medicine_id = dm.doctor_medicine_id join headquarter h on h.headquarter_id = ds.headquarter_id where ds.state_id= "
						+ state_id + " and docs.year=" + endYear + "  GROUP BY ds.headquarter_id\r\n"
						+ ") as combined GROUP BY headquarter_id;";
			}

		} else {
			qry = "select count(distinct(d.doctor_id)) as doctor_count, ds.headquarter_id, h.headquarter_name , sum("
					+ query_str + ") as headquarter_total_sale from doctor d\r\n"
					+ "join division_state ds on ds.division_state_id = d. division_state_id\r\n"
					+ "join doctor_medicine dm on dm.doctor_id = d.doctor_id\r\n"
					+ "join doctor_sale docs on docs.doctor_medicine_id = dm.doctor_medicine_id\r\n"
					+ "join headquarter h on h.headquarter_id = ds.headquarter_id\r\n" + "where ds.state_id=" + state_id
					+ " and ds.headquarter_id=" + headquarter_id + " and docs.year=" + year
					+ " GROUP BY ds.headquarter_id";

		}

		SQLQuery sqlQuery = (SQLQuery) getSession().createSQLQuery(qry)
				.setResultTransformer(Transformers.aliasToBean(GetHeadquarterTotalSaleDto.class));
		sqlQuery.addScalar("headquarter_id", IntegerType.INSTANCE);
		sqlQuery.addScalar("headquarter_name", StringType.INSTANCE);
		sqlQuery.addScalar("headquarter_total_sale", FloatType.INSTANCE);
		sqlQuery.addScalar("doctor_count", IntegerType.INSTANCE);
		return sqlQuery.list();

	}

	@SuppressWarnings("unchecked")
	public List<headquarter> dynamicHeadquarterDropdown(headquarter headquarterdropdownjson) {
		List<headquarter> x = getSession()
				.createSQLQuery("select headquarter_id,headquarter_name from headquarter where state_id="
						+ headquarterdropdownjson.getState_id())
				.list();
		return x;
	}
}
