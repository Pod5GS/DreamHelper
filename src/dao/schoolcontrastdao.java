package dao;

import hibernate.HibernateSessionFactory;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class schoolcontrastdao {
	private Session session;
	private Transaction transaction;
	private Query query;
	public List<Object[]> queryforschoolinfo(String contraststr){
		session = HibernateSessionFactory.getSession();
		String setstr = "(";
		String[] schools = contraststr.split(",");
		for(int i = 0; i < schools.length - 1; i++)
			setstr = setstr + "'" + schools[i] + "',"; 
		setstr = setstr + "'" + schools[schools.length - 1] + "')";
		try {
			String sql = "SELECT schoolinfo.*,evaluation.comprehensive,evaluation.atmosphere,evaluation.environment,evaluation.prospect  FROM schoolinfo left outer join evaluation on schoolinfo.school = evaluation.school where schoolinfo.school in" + setstr;
			System.out.println(sql);
			query = session.createSQLQuery(sql);
			List<Object[]> list = query.list();
			if(list.size() == 0)
	        	System.out.println("卧槽没找到");
			transaction = session.beginTransaction();
			transaction.commit();
			session.close();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			session.close();
		}
		return null;
	}
}
