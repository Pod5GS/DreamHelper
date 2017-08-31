package dao;
import java.util.List;

import org.hibernate.*;

import hibernate.HibernateSessionFactory;

public class testdao {
	private Session session;
	private Transaction transaction;
	private Query query;
	public List<Object[]> queryforquestion(){
		session = HibernateSessionFactory.getSession();
		try {
			System.out.println("before dao retrive list");
			query = session.createSQLQuery("SELECT * FROM question");
			List<Object[]> list = query.list();
			System.out.println("after dao retrieve list");
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
	public List<String> queryforjob(String typename){
		session = HibernateSessionFactory.getSession();
		try {
			System.out.println("before dao retrive list");
			query = session.createSQLQuery("SELECT content FROM job where type = " + '"' + typename + '"');
			List<String> list = query.list();
			System.out.println("after dao retrieve list");
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
	public List<String> queryforcategory(String typename){
		session = HibernateSessionFactory.getSession();
		try {
			query = session.createSQLQuery("SELECT content FROM category where type = " + '"' + typename + '"');
			List<String> list = query.list();
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
