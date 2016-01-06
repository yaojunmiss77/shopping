package controllerAction;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import hibernate.util.HibernateUtil;
import pojo.Account;

@SuppressWarnings("serial")
public class AccountAction extends ActionSupport{
	
	private List<Account> accounts;
	private List sellerName;
	
	
	public List<Account> getAccounts() {
		return accounts;
	}


	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}
	
	public List getSellerName() {
		return sellerName;
	}


	public void setSellerName(List sellerName) {
		this.sellerName = sellerName;
	}


	@SuppressWarnings("unchecked")
	public String execute()
	{
		String hql = "from Sell order by sellDate desc";
		this.setAccounts(HibernateUtil.executeQuery(hql, null));
		String hql1 = "select user.name from Sell order by sellDate desc";
		this.setSellerName(HibernateUtil.executeQuery(hql1, null));
		
		return SUCCESS;
	}

}
