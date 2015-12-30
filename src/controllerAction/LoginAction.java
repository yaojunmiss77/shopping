package controllerAction;

import hibernate.util.HibernateUtil;

import com.opensymphony.xwork2.ActionSupport;

import dao.IUserDao;
import dao.UserDao;

import pojo.User;

public class LoginAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String execute()
	{
		String b = ERROR;
		IUserDao userDao = new UserDao();
		if(userDao.isValid(this.getUser().getNumber(), this.getUser().getPassword()))
			b = SUCCESS;
		return b;
	}
	
	

}
