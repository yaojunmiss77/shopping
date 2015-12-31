/*
 * 作者：姚俊
 * 功能：通过对象来获取所有的字段和类名
 * 日期：2015-07-12
 */
package dao;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ObjectToClass {
	
	/**
	 * @category 获取一个对象的类名
	 * @param object
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static String getClass(Object object)
	{
		String a=object.getClass().toString();
		System.out.println("a是"+a);
		  String b[]=a.split(" ");
		  for(int i=0;i<b.length;i++)
		  {
			  System.out.println(b[i]);
		  }
		  System.out.println("b1是"+b[1]);
		  Class cla=null;
		  try {
		   cla=Class.forName(b[1]);
		  } catch (ClassNotFoundException e) {
		   e.printStackTrace();
		  }
		  
		  return cla.getSimpleName();
	}
	
	/**
	 * @category 获取一个对象的所有的属性名
	 * @param object
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static Map<Integer,String> getProperty(Object object)
	{
		  Map<Integer, String> names=new HashMap<Integer, String>();
		  String a=object.getClass().toString();
		  String b[]=a.split(" ");
		  Class cla=null;
		  try {
		   cla=Class.forName(b[1]);
		  } catch (ClassNotFoundException e) {
		   e.printStackTrace();
		  }
		  Field[] f=cla.getDeclaredFields();
		  //获取字段名
		  for(int i=0;i<f.length;i++){
		   System.out.println("属性名为:"+f[i].getName());
		   names.put(i, f[i].getName());
		  }
		  
		  return names;
	}
	
	
	/**
	 * @category 获取一个对象的Id属性
	 * @param object
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static String getPropertyId(Object object)
	{
		String a=object.getClass().toString();
		String b[]=a.split(" ");
		Class cla=null;
		try {
			cla=Class.forName(b[1]);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Field[] f=cla.getDeclaredFields();
		
		return f[0].getName();
	}
	
	/**
	 * @category 通过动态方法调用对象的set和get方法
	 * @param list
	 * @throws IntrospectionException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 * @return 返回的是get方法中的值
	 */
	public static <T> List testGetOrSet(Object object) throws IntrospectionException, IllegalArgumentException, IllegalAccessException, InvocationTargetException{
        Class tClass = object.getClass();
        List getValues=new ArrayList();
        //获得该类的所有属性
        Field[] fields = tClass.getDeclaredFields();
        for(Field field:fields){
            PropertyDescriptor pd = new PropertyDescriptor(field.getName(), tClass);
            //获得set方法
            Method method = pd.getWriteMethod();
            Method get = pd.getReadMethod();
            Object getValue = get.invoke(object, new Object[]{});
            //循环获取该对象的属性名和调用get方法
            System.out.println("field:"+field.getName()+"---getValue:"+getValue);
            getValues.add(getValue);
        }
        return getValues;
    }
	
	
	/**
	 * @category 通过动态方法调用对象的GetId
	 * @param list
	 * @throws IntrospectionException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 * @return 返回的是get方法中的值
	 */
	public static <T> Object GetId(Object object) throws IntrospectionException, IllegalArgumentException, IllegalAccessException, InvocationTargetException{
		Class tClass = object.getClass();
		//获得该类的所有属性
		Field[] fields = tClass.getDeclaredFields();
		
		 PropertyDescriptor pd = new PropertyDescriptor(fields[0].getName(), tClass);
         Method method = pd.getWriteMethod();
         Method get = pd.getReadMethod();
         Object getValue = get.invoke(object, new Object[]{});
		 return getValue;
	}
	
	
/*	*//**
	 * @category 通过动态方法调用对象的Set方法把数据插入到该对象当中
	 * @param list
	 * @throws IntrospectionException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 * @return 返回的是get方法中的值
	 *//*
	public static <T> void insertDataToBean(T object) throws IntrospectionException, IllegalArgumentException, IllegalAccessException, InvocationTargetException{
		Class tClass = object.getClass();
		//获得该类的所有属性
		 Field[] fields = tClass.getDeclaredFields();
		 Object[] objects=new Object[maps.size()];
		 for(int i=0;i<maps.size();i++)
		 {
			 if(maps.get(i)==null)
			 {
				 objects[i]=null;
			 }
			 else
				 objects[i]=maps.get(i);
		 }
		 for(Field field:fields){
	            PropertyDescriptor pd = new PropertyDescriptor(field.getName(), tClass);
	            //获得set方法
	            Method method = pd.getWriteMethod();
	            method.invoke(object, new Object[]{"123"});
	           System.out.println("fddsafdsaf");

	        }
	}*/
}
