package test;

import java.beans.IntrospectionException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import dao.ObjectDao;
import dao.ObjectToClass;
import hibernate.util.HibernateUtil;
import pojo.Goods;
import pojo.User;
import serviceFactory.Service;

public class TestMain {
	
	public static void main(String[] args) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException, IntrospectionException {
		// TODO Auto-generated method stub
		
		/*Session session=null;
		Transaction ts=null;
		try {
			session=HibernateUtil.getCurrentSession();
			User user=new User();
			user.setName("fdsafdsa");
			user.setNumber("321312");
	
			session.save(user);
			ts=session.beginTransaction();
			
			ts.commit();
	
		} catch (Exception e) {
			if(ts!=null){
				ts.rollback();
			}
			throw new RuntimeException(e.getMessage());
			// TODO: handle exception
		}finally{
			if(session!=null && session.isOpen()){
				session.close();
			}
		}*/
		
		
/*	 IUserDao too=new UserDao();
	System.out.println(too.isValid("yaoun", "123"));*/
	
	User user = new User();
	/*user.setNumber("yaofdfdssjun");
	user.setId(8);*/
	
/*	user.setAge(21);
	user.setName("fdsafdsa");*/
	/*user.setNumber("yaojun");*/
	
	/*System.out.println(ObjectToClass.getPropertyId(user));*/
	/*Map map=ObjectToClass.getProperty(user);
	
	for(int i=0;i<map.size();i++)
	{
		if(map.get(i) != null)
		System.out.println("fdsa是多少"+map.get(i));
	}*/
	
	/*List list = ObjectToClass.testGetOrSet(user);
	System.out.println("fasdfdsa尺寸是:"+list.size());
	
	UserDao userDao = new UserDao();
	
	Object o=userDao.getObject(user);
	System.out.println("o是"+o);
	if(o !=null)
	{
		User user1 =(User)userDao.getObject(user);
		System.out.println("fdsa"+user1.getPassword());
	}*/
	
	ObjectDao userDao = new ObjectDao();
	/*userDao.insertObject(user);*/
	
/*	List list = userDao.getPageObjectsByClassNameOrderById("User", 0, 4);*/
	
	/*for(Object lists : list)
	{
		System.out.println("fdsafdsa"+((User)lists).getNumber());
	}*/
/*	
	for(int i=0;i<list.size();i++)
	{
		System.out.println("fdsafda是"+((User)list.get(i)).getNumber());
	}*/
	
/*	Goods good = new Goods();
	good.setNumber("fdsafdsa");
	good.setImagePath("fdsafdas");*/
	
	/*user.setNumber("yaojun");
	user.setPassword("123");
	
	userDao.insertObject(user);
		Goods good = new Goods();
	good.setImagePath("app/img/foods/banana.png");
	good.setName("香蕉");
	good.setNumber("21044342537564541322");
	good.setOfferings("金华食品有限公司");
	good.setPurchasePrice(23F);
	good.setSellPrice(25F);
	good.setType("水果");
	good.setSellNum(0);
	good.setReserveNum(34);;
	userDao.insertObject(good);*/
	/*String hql = "select distinct type from Goods";
	 * 
	 * 
	 * 
	 * 
	
	
	List list5 = null;
	List list = HibernateUtil.executeQuery(hql, null);
	
	
	

	
	for(int i=0;i<list.size();i++)
	{
		String[] parames={list.get(i).toString()};
		System.out.println("类型为:"+list.get(i).toString());
		List list3 = HibernateUtil.executeQuery("from Goods where type=?", parames);
		for(int j=0;j<list3.size();j++)
		{
			System.out.println(((Goods)list3.get(j)).getName());
			list5.add(list3.get(i));
		}
	}
	
	List list4 = HibernateUtil.executeQuery("select distinct type from Goods", null);
	
	for(Object o : list4)
	{
		System.out.println("类型的数量为:"+o);
	}*/
	/*String[] parameters ={"21",String.valueOf("1132")};
	HibernateUtil.executeUpdate("update Goods set reserveNum = 456456,sellNum=45 where number='08'", null);*/
	User user1 = new User();
	user1.setAge(321);
/*	user1.setImagePath("3213");
	user1.setName("321321");
	user1.setNumber("098098");*/
	/*Class tClass = user1.getClass();
    List getValues=new ArrayList();
    //获得该类的所有属性
    Field[] fields = tClass.getDeclaredFields();
    
    for(Field field : fields)
    {
    	System.out.println("属性名称为:"+field.getName());
    }*/
	
	Service.getObjectDao().updateObjectByNumber(user1);
	
	/*List lsits = ObjectToClass.testGetOrSet(user1);
	for(Object user2 : lsits)
	{
		if(user2!=null)
		System.out.println(user2);
	}*/
	
	
	
    
    
	
 }
	
} 
