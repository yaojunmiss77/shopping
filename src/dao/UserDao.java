package dao;

import hibernate.util.HibernateUtil;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import pojo.User;

public class UserDao implements IUserDao
{


	public boolean isValid(String userName, String password) {
		// TODO Auto-generated method stub
		boolean b=false;
		String hql="from User where number=? and password=?";
		String[] parameters={userName,password};
		List list=HibernateUtil.executeQuery(hql, parameters);
		if(list.size()>0)
			b=true;
		return b;
	}

	public boolean isExist(String userName) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean insertUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	public List getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	public User getUser(String userNumber) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean deleteUser(String userNumber) {
		// TODO Auto-generated method stub
		return false;
	}
	
}