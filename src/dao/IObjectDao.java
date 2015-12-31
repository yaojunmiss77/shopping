package dao;

import java.util.List;

import pojo.User;

public interface IObjectDao
{
	//对于用户进行相应的验证
	public boolean isValid(User user);
	/**
	 * @category 添加一个对象，像数据库当中插入一个对象
	 * @param object 添加一个对象，像数据库当中插入一个对象
	 * @return Boolean
	 */
	public boolean insertObject(Object object);
	/**
	 * 
	 * @param ClassName 通过类名无条件获取所有该类的所有对象
	 * @return List
	 */
	public List getAllObjectByClassName(String className);
	/**
	 * @category 通过对象的number来查询一个对象
	 * @param object  通过对象的number来查询一个对象
	 * @return 返回一个对象
	 */
	public Object getObjectByNumber(Object object);
	/**
	 * @category 通过对象的编号删除一个对象
	 * @param object 通过对象的number删除对象
	 * @return boolean
	 */
	public boolean deleteObjectByNumber(Object object);
	
	/**
	 * @category 无条件查询该对象多有数据并且进行分页
	 * @param pageNow 当前要查询的起始位置
	 * @param pageSize 当前要查询的数据条数
	 * @return List
	 */
	public List getPageObjectsByClassNameOrderById(String calssName,Integer pageNow,Integer pageSize);

}