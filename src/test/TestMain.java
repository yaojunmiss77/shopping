package test;

import java.beans.IntrospectionException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import dao.ObjectDao;
import pojo.Goods;
import pojo.User;

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
	
	user.setNumber("yaojun");
	user.setPassword("123");
	
	userDao.insertObject(user);
	}
	
} 
