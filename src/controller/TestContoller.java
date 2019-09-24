package controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
 		* @author : lingQiCheng
 		* @Description : TODO 
 		* @CreateDate : 2018年7月11日 上午8:33:47 
 		* @lastModified : 2018年7月11日 上午8:33:47 
 		* @version : ylTeamMusic 1.0  
 	*/  
@Controller
public class TestContoller {
	private Logger logger = Logger.getLogger(TestContoller.class);
	@RequestMapping("/*")
	public String doForward(HttpServletRequest request){
		String servletPath = request.getServletPath();
		String url = servletPath.replace(".html", "");
		return url;
	}

}
