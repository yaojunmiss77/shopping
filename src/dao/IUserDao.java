package dao;

import java.util.List;

import pojo.User;

public interface IUserDao
{
	//对于用户进行相应的验证
	public boolean isValid(String userName,String password);
	//判断用户是否存在
	public boolean isExist(String userName);
	//插入一个用户
	public boolean insertUser(User user);
	//获取所有的用户
	public List getAllUsers();
	//得到单个用户
	public User getUser(String userNumber);
	//删除一个用户
	public boolean deleteUser(String userNumber);

}