package controllerAction;

import java.io.IOException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import hibernate.util.HibernateUtil;
import pojo.SellDetail;
import tool.SetDatas;

@SuppressWarnings("serial")
public class DetailAction extends ActionSupport{
	
	private String accountNumber;
	
	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String execute() throws IOException
	{
		String hql="from SellDetail where sell.number=? order by goods.type,goods.sellNum desc";
		String[] parameters={this.getAccountNumber().trim()};
		List list = HibernateUtil.executeQuery(hql, parameters);
		StringBuilder sellDetails = new StringBuilder();
		sellDetails.append("[");
		for(int i=0;i<list.size();i++)
		{
			System.out.println("传送过来的数据为:"+this.getAccountNumber());
			SellDetail sellDetail = (SellDetail)list.get(i);
			System.out.println("名称为:"+sellDetail.getGoodsName());
			sellDetails.append("{\"number\":\""+sellDetail.getGoodsNumber()+"\",");
			sellDetails.append("\"name\":\""+sellDetail.getGoodsName()+"\",");
			if(i == list.size()-1)
			sellDetails.append("\"sellNum\":\""+sellDetail.getGoodsSellNum()+"\"}]");
			else
			sellDetails.append("\"sellNum\":\""+sellDetail.getGoodsSellNum()+"\"},");	
		}
		SetDatas.setDatas(sellDetails.toString(), 1);
		return null;
	}

}
