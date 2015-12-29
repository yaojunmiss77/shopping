package test;


import hibernate.util.HibernateUtil;

import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.IUserDao;
import dao.UserDao;

import pojo.User;

public class TestMain {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/*Session session=null;
		Transaction ts=null;
		try {
			session=HibernateUtil.getCurrentSession();
			User user=new User();
			user.setName("fdsafdsa");
			user.setNumber("321312");
	
			session.save(user);
			ts=session.beginTransaction();
			
			ts.commit();
	
		} catch (Exception e) {
			if(ts!=null){
				ts.rollback();
			}
			throw new RuntimeException(e.getMessage());
			// TODO: handle exception
		}finally{
			if(session!=null && session.isOpen()){
				session.close();
			}
		}*/
		
		
	 IUserDao too=new UserDao();
	System.out.println(too.isValid("yaoun", "123"));
		
	}

}
