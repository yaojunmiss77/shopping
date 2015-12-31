package dao;

import hibernate.util.HibernateUtil;

import java.beans.IntrospectionException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

import pojo.User;

public class ObjectDao implements IObjectDao
{
	public boolean isValid(User user) {
		// TODO Auto-generated method stub
		boolean b=false;
		String hql="from User where number=? and password=?";
		String[] parameters={user.getNumber(),user.getPassword()};
		List list=HibernateUtil.executeQuery(hql, parameters);
		if(list.size()>0)
			b=true;
		return b;
	}
	public boolean insertObject(Object object) {
		// TODO Auto-generated method stub
		boolean b = false;
		b = HibernateUtil.save(object);
		return b;
	}

	public List getAllObjectByClassName(String className) {
		// TODO Auto-generated method stub
		String hql="from "+className;
		List list=HibernateUtil.executeQuery(hql,null);
		if(list.size() > 0)
			return list;
		else
		return null;
	}

	public Object getObjectByNumber(Object object) {
		// TODO Auto-generated method stub
		String hql="from "+ObjectToClass.getClass(object)+" where number=?";
		String number = null;
		List getValues = null;
		try {
			getValues = ObjectToClass.testGetOrSet(object);
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IntrospectionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Map map=ObjectToClass.getProperty(object);
		for(int i=0; i<getValues.size();i++)
		{
			if(map.get(i).equals("number"))
			{
				if(getValues.get(i) !=null)
				{
					number = getValues.get(i).toString();
				}
				
				break;
				
			}
		}
		String[] parameters={number};
		List list=HibernateUtil.executeQuery(hql, parameters);
		if(list.size() > 0)
			return list.get(0);
		else
		return null;
	}

	public boolean deleteObjectByNumber(Object object) {
		// TODO Auto-generated method stub
		boolean b = false;
		String hql="delete "+ObjectToClass.getClass(object)+" where number=?";
		
		String number = null;
		List getValues = null;
		try {
			getValues = ObjectToClass.testGetOrSet(object);
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IntrospectionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Map map=ObjectToClass.getProperty(object);
		for(int i=0; i<getValues.size();i++)
		{
			if(map.get(i).equals("number"))
			{
				if(getValues.get(i) !=null)
				{
					number = getValues.get(i).toString();
				}	
				break;
			}
		}
		String[] parameters={number};
		b = HibernateUtil.executeUpdate(hql, parameters);
		return b;
	}
	@Override
	public List getPageObjectsByClassNameOrderById(String className,Integer pageNow, Integer pageSize) {
		// TODO Auto-generated method stub
		String hql = "from " +className+" order by id";
		List list = HibernateUtil.executeQueryByPage(hql, null, pageSize, pageNow);
		return list;
	}
	
}