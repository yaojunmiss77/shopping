package serviceFactory;

import dao.IObjectDao;
import dao.ObjectDao;

public class Service {
	
	public static IObjectDao getUserDao()
	{
		return new ObjectDao();
	}

}
