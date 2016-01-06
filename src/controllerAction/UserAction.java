package controllerAction;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import pojo.User;
import serviceFactory.Service;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
	
	private List<User> users;

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}
	
	
	@SuppressWarnings("unchecked")
	public String execute()
	{
		this.setUsers(Service.getObjectDao().getAllObjectByClassName("User"));
		return SUCCESS;
	}

}
