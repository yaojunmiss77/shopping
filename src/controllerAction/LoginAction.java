package controllerAction;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import pojo.User;
import serviceFactory.Service;

public class LoginAction{
	
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	public String execute()
	{
		String b = "error";
		ActionContext.getContext().getSession().put("yaojun", "我是姚俊");
		
		if(Service.getUserDao().isValid(this.getUser()))
			b = "success";
		return b;
	}
}
