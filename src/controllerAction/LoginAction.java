package controllerAction;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import pojo.User;
import serviceFactory.Service;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport{
	
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
		ActionContext.getContext().getSession().put("user",Service.getObjectDao().getObjectByNumber(this.getUser()));
		
		if(Service.getObjectDao().isValid(this.getUser()))
			b = SUCCESS;
		return b;
	}
}
