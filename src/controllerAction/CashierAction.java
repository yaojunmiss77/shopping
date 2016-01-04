package controllerAction;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

import bean.Group;
import hibernate.util.HibernateUtil;
import pojo.Goods;

@SuppressWarnings("serial")
public class CashierAction extends ActionSupport{
	
	private Map map =new HashMap();
	private List lists = new ArrayList();
	
	private List<Goods> goods = new ArrayList<Goods>();
	
	public List<Goods> getGoods() {
		return goods;
	}

	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}
	

	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}
	

	public List getLists() {
		return lists;
	}

	public void setLists(List lists) {
		this.lists = lists;
	}

	@SuppressWarnings("unchecked")
	public String execute()
	{
		Group group1 = new Group();
		group1.setName("水果区");
		group1.setContent("回馈新老客户，全场五折");
		
		Group group2 = new Group();
		group2.setName("生活用品区");
		group2.setContent("回馈新老客户，全场五折");
		
		Group group3 = new Group();
		group3.setName("熟食区");
		group3.setContent("回馈新老客户，全场五折");
		
		Group group4 = new Group();
		group4.setName("饮品区");
		group4.setContent("回馈新老客户，全场五折");
		lists.add(group1);
		lists.add(group2);
		lists.add(group3);
		lists.add(group4);
		
		String hql = "select distinct type from Goods order by type";
		
		List list = HibernateUtil.executeQuery(hql, null);
		
		
		
		for(int i=0;i<list.size();i++)
		{
			List<Goods> good =new ArrayList<Goods>();
			String[] parames={list.get(i).toString()};
			List list3 = HibernateUtil.executeQuery("from Goods where type=? order by sellNum desc", parames);
			for(int j=0;j<list3.size();j++)
			{
				good.add((Goods)list3.get(j));
			}
			map.put(i, good);
		}
		/*this.setGoods(HibernateUtil.executeQuery("from Goods order by type", null));*/
		return SUCCESS;
	}

}
