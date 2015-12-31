package controllerAction;

import com.opensymphony.xwork2.ActionSupport;

import pojo.User;
import serviceFactory.Service;

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
		
		if(Service.getUserDao().isValid(this.getUser()))
			b = SUCCESS;
		return b;
	}
}
