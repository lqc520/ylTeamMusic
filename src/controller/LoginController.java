package controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.jdbc.log.Log4JLogger;

import entity.Admin;
import entity.User;
import javassist.expr.NewArray;
import service.AdminLoginService;
import service.UserService;
import utils.AppMD5;


/** 
 		* @author : RuanXiongTeng
 		* @Description : TODO 
 		* @CreateDate : 2018年7月13日 下午2:42:48 
 		* @lastModified : 2018年7月13日 下午2:42:48 
 		* @version : ylTeamMusic 1.0  
 	*/  
@Controller
public class LoginController {
	
	@Resource
	private UserService userService=null;
	@Resource AdminLoginService aLService = null;
	
	@RequestMapping("chelogin")
	public String isLogin(HttpServletRequest requst,String UserName,String PassWord){
		
		if (UserName!=null &&  PassWord!=null) {
			PassWord=AppMD5.getMD5(PassWord);
			Map<String, Object> map=new HashMap<String, Object>();
			map.put("userName", UserName);
			map.put("passWord", PassWord);
			User user = userService.getUser(map);
			if (user!=null) {
				requst.getSession().setAttribute("user", user);
				return "redirect:/index.html";
			}else {
				requst.setAttribute("msg", "用户名或密码错误");
				return "login";
			}
		}else {
			return "login";
		}
	}
	
	@RequestMapping("AdminLogin")
	public String AdminLogin(HttpServletRequest requst){
		String adminName =requst.getParameter("adminName");
		String passWord =requst.getParameter("passWord");
		if (adminName!=null &&  passWord!=null) {
			Admin admin = aLService.getAdmin(adminName, passWord);
			if (admin!=null) {
				HttpSession session =requst.getSession();
				session.setAttribute("admin", admin);
				return "redirect:/musicManager.html";
			}else {
				requst.setAttribute("msg", "用户名或密码错误");
				return "AdminLogin";
			}
		}else {
			return "AdminLogin";
		}
		
	}
	
	
	
	
}
