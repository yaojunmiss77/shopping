package serviceFactory;

import dao.IObjectDao;
import dao.ObjectDao;

public class Service {
	
	public static IObjectDao getObjectDao()
	{
		return new ObjectDao();
	}

}
