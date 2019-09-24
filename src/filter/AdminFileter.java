package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/** 
 		* @author : lingQiCheng
 		* @Description : TODO 
 		* @CreateDate : 2018年7月18日 上午8:35:09 
 		* @lastModified : 2018年7月18日 上午8:35:09 
 		* @version : ylTeamMusic 1.0  
 	*/  
//@WebFilter("*Manager")
public class AdminFileter implements Filter{

	@Override
	public void destroy() {
		
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest requst = (HttpServletRequest)arg0;
		HttpServletResponse response = (HttpServletResponse)arg1;
		if(requst.getSession().getAttribute("admin")==null){
			response.sendRedirect("AdminLogin.html");
		}else{
			chain.doFilter(arg0, arg1);
		}
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("开始工作");
		
	}

}
