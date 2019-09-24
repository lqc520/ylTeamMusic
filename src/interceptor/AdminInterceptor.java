package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/** 
 		* @author : lingQiCheng
 		* @Description : TODO 
 		* @CreateDate : 2018年7月18日 上午10:24:49 
 		* @lastModified : 2018年7月18日 上午10:24:49 
 		* @version : ylTeamMusic 1.0  
 	*/  
public class AdminInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if(request.getSession().getAttribute("admin")==null){
			request.getRequestDispatcher("AdminLogin.html").forward(request, response);
			return false;
		}else{
			return true;
		}
	}
}
