package tool;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;



public class SetDatas {
	
	/**
	 * @category 服务器中的数据放入到客户端，提供显示
	 * @param datas 要传入的json数据
	 * @param chche 如果是json传值方式可以填1或者是其他，1代表清空缓存，如果要是xml传值方式的话，必须填其他不为1的数字
	 * @throws IOException
	 */
	public static void setDatas(String datas,Integer cache) throws IOException
	{
		HttpServletResponse res=ServletActionContext.getResponse();
		res.setCharacterEncoding("UTF-8");  
		res.setContentType("text/html");
		//告诉浏览器不需要缓存数据，传递json数据可以加入这句，但是传值方式是xml数据的话，不能用这句
		//res.setContentType("Cache-Control: no-cache");
		if(cache==1)
		{
			res.setContentType("Cache-Control: no-cache");
		}
		PrintWriter out=res.getWriter();
		out.print(datas);
		
	}

}
