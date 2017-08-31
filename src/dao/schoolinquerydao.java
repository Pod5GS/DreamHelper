package dao;

import java.util.List;
import org.hibernate.*;
import hibernate.HibernateSessionFactory;

public class schoolinquerydao {
	private Session session;
	private Transaction transaction;
	private Query query;

	public List<Object[]> queryforschoolinfo() {
		session = HibernateSessionFactory.getSession();
		try {
			String sql = "select school,province,belongto,type,tags,toppicurl,location,numoftop,numofmaster,numofdoc from schoolinfo";
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
	
	public List<Object[]> queryforschoolinfobyname(String school) {
		session = HibernateSessionFactory.getSession();
		try {
			String sql = "select school,province,belongto,type,tags,toppicurl,location,numoftop,numofmaster,numofdoc from schoolinfo where school like '%" + school +"%'";
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
	
	public List<Object[]> queryforfilterschoolinfo(String tag, String type,
			String province) {
		session = HibernateSessionFactory.getSession();
		try {
			String filterstr = "";
			String sql = "";
			if (!tag.equals("不限"))
				tag = " tags like " + "'%" + tag + "%' ";
			if (!type.equals("不限"))
				type = " type = " + "'" + type + "' ";
			if (!province.equals("不限"))
				province = " province = " + "'" + province + "' ";
			if (!tag.equals("不限")) {
				filterstr = tag;
				if (!type.equals("不限")) {
					filterstr = filterstr + "and" + type;
					if (!province.equals("不限")) {
						filterstr = filterstr + "and" + province;
					} else {
					}
				} else {
					if (!province.equals("不限")) {
						filterstr = filterstr + "and" + province;
					} else {
					}
				}
			} else {
				if (!type.equals("不限")) {
					filterstr = type;
					if (!province.equals("不限")) {
						filterstr = filterstr + "and" + province;
					} else {
					}
				} else {
					if (!province.equals("不限")) {
						filterstr = province;
					} else {
					}
				}
			}
			if(filterstr != "")
			    sql = "select school,province,belongto,type,tags,toppicurl,location,numoftop,numofmaster,numofdoc from schoolinfo where" + filterstr;
			else
				sql = "select school,province,belongto,type,tags,toppicurl,location,numoftop,numofmaster,numofdoc from schoolinfo";
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
