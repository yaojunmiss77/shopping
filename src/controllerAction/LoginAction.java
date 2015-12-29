package controllerAction;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import dao.IUserDao;
import dao.UserDao;

import pojo.User;

@SuppressWarnings("deprecation")
public class LoginAction extends SimpleFormController{

	@Override
	protected ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {
		// TODO Auto-generated method stub
		User user = (User)command;
		UserDao userDao = new UserDao();
		if(userDao.isValid(user.getNumber(), user.getPassword()))
		{
			System.out.println("现在成功的登录进来了");
			return new ModelAndView(getSuccessView());
		}
		else
		{
			System.out.println("我现在已经登录失败");
			Map model = errors.getModel();
			model.put("user", user);
			return new ModelAndView(getFormView(),model);
		}
	}
	
	

}
