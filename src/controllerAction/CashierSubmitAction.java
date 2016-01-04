package controllerAction;

import java.io.IOException;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import hibernate.util.HibernateUtil;
import pojo.Goods;
import pojo.Sell;
import pojo.User;
import serviceFactory.Service;
import tool.SetDatas;

@SuppressWarnings("serial")
public class CashierSubmitAction extends ActionSupport{

	private String goodsData;

	public String getGoodsData() {
		return goodsData;
	}


	public void setGoodsData(String goodsData) {
		this.goodsData = goodsData;
	}


	@SuppressWarnings("unchecked")
	public String execute() throws IOException, JSONException
	{
		JSONArray goods=new JSONArray(this.goodsData);

		for(int h=0;h<goods.length();h++)
		{
			
			JSONObject jbt= goods.getJSONObject(h);
			if(jbt.getInt("sellNum")!=0)
			{
				String[] parameters={String.valueOf(jbt.get("number")).trim()};
				String hql="update Goods"
						+ " set reserveNum=reserveNum-"+jbt.getInt("sellNum")+",sellNum=sellNum+"+jbt.getInt("sellNum")+" where number=?";
				HibernateUtil.executeUpdate(hql, parameters);
			}
			
		}
		
		Sell sell = new Sell();
		sell.setNumber(String.valueOf(Calendar.getInstance().getTimeInMillis()));
		sell.setSellDate(Calendar.getInstance().getTime());
		sell.setUser((User)ActionContext.getContext().getSession().get("user"));
		Service.getObjectDao().insertObject(sell);
	
		
		return null;
	}

}
