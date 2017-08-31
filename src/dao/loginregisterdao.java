package dao;

import java.util.List;
import org.hibernate.*;
import javax.swing.JOptionPane;
import model.User;
import hibernate.HibernateSessionFactory;

public class loginregisterdao {
	private Session session;
	private Transaction transaction;
	private Query query;
	private String message = "error";

	public String saveInfo(User info) {
		session = HibernateSessionFactory.getSession();
		try {
			transaction = session.beginTransaction();
			session.save(info);
			transaction.commit();
			message = "success";
			session.close();
			return message;
		} catch (Exception e) {
			message("注册信息错误" + e);
			e.printStackTrace();
			session.close();
			return message;
		}
	}

	public List queryInfo(String type, Object value) {
		session = HibernateSessionFactory.getSession();
		try {
			System.out.println("用户名是"+value);
			String hql = "from User as u where u.usrname = ?";
			query = session.createQuery(hql);
			query.setParameter(0, value);
			List list = query.list();
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

	public void message(String string) {
		int type = JOptionPane.YES_NO_OPTION;
		String title = "提示消息";
		JOptionPane.showMessageDialog(null, message, title, type);

	}
}
