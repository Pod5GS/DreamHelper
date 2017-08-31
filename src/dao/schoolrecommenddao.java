package dao;

import java.util.List;

import org.hibernate.*;

import hibernate.HibernateSessionFactory;

public class schoolrecommenddao {
	private Session session;
	private Transaction transaction;
	private Query query;
	public List<Object[]> queryforschool(String usrCate, String province, String difference){
		session = HibernateSessionFactory.getSession();
		try {
			String sql = "select school,diff0,diff1 from final_reference where category = '" + usrCate + "'" + "and province = '" + province + "' and diff0 <=" + difference;
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
	public List<Object[]> querywithmajorforschool(String usrCate, String province, String major, String difference){
		session = HibernateSessionFactory.getSession();
		try {
			String sql = "select school,diff0,diff1 from prof_final_reference where category = '" + usrCate + "'" + "and province = '" + province + "'" + "and major='" + major + "' and diff0 <=" + difference;
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
	public List<Object[]> queryforevaluation(String school){
		session = HibernateSessionFactory.getSession();
		try {
			query = session.createSQLQuery("select * from evaluation where school = '" + school + "'");
			List<Object[]> list = query.list();
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
	public List<Object[]> queryforschoolinfobyname(String school) {
		session = HibernateSessionFactory.getSession();
		try {
			String sql = "select school,province,belongto,type,tags,toppicurl,location,numoftop,numofmaster,numofdoc from schoolinfo where school = '" + school +"'";
			System.out.println(sql);
			query = session.createSQLQuery(sql);
			List<Object[]> list = query.list();
			if (list.size() == 0)
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
