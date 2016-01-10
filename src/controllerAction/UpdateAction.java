package controllerAction;

import com.opensymphony.xwork2.ActionSupport;

import pojo.Goods;

@SuppressWarnings("serial")
public class UpdateAction extends ActionSupport{
	
	private Goods goods;

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
	
	public String execute()
	{
		
		return SUCCESS;
	}

}
