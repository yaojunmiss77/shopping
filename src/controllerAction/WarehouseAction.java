package controllerAction;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import hibernate.util.HibernateUtil;
import pojo.Goods;

@SuppressWarnings("serial")
public class WarehouseAction extends ActionSupport{
	
	private List<Goods> goods;
	
	
	public List<Goods> getGoods() {
		return goods;
	}


	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}


	@SuppressWarnings("unchecked")
	public String execute()
	{
		String hql="from Goods order by sellNum desc";
		this.setGoods(HibernateUtil.executeQuery(hql, null));
		return SUCCESS;
	}

}
