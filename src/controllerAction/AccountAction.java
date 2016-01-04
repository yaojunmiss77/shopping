package controllerAction;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import hibernate.util.HibernateUtil;
import pojo.Account;

@SuppressWarnings("serial")
public class AccountAction extends ActionSupport{
	
	private List<Account> accounts;
	
	
	public List<Account> getAccounts() {
		return accounts;
	}


	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}


	@SuppressWarnings("unchecked")
	public String execute()
	{
		String hql = "from Sell order by sellDate desc";
		this.setAccounts(HibernateUtil.executeQuery(hql, null));
		return SUCCESS;
	}

}
