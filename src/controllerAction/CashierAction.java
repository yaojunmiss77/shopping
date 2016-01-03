package controllerAction;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import hibernate.util.HibernateUtil;
import pojo.Goods;

@SuppressWarnings("serial")
public class CashierAction extends ActionSupport{
	
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
		this.setGoods(HibernateUtil.executeQuery("from Goods order by type", null));
		
		for(int i=0;i<this.getGoods().size();i++)
		{
			System.out.println("fdsa"+((Goods)this.getGoods().get(i)).getReserveNum());
		}
		/*this.setName("我是姚俊");*/
		return SUCCESS;
	}

}
