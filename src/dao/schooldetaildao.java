package dao;
import java.util.List;

import org.hibernate.*;

import hibernate.HibernateSessionFactory;
public class schooldetaildao {
	private Session session;
	private Transaction transaction;
	private Query query;
	public List<Object[]> queryforschoolinfo(String school){
		session = HibernateSessionFactory.getSession();
		try {
			String sql = "select * from schoolinfo where school = '" + school +"'";
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
