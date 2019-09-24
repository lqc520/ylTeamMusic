package controller;

import java.io.PrintWriter;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import entity.User;

import service.UserService;


/** 
	* @author : lingQiCheng
	* @Description : TODO 
	* @CreateDate : 2018年7月12日 上午11:20:23 
	* @lastModified : 2018年7月12日 上午11:20:23 
	* @version : ylTeamMusic 1.0  
*/  
@Controller
public class UserController {
	private Logger logger = Logger.getLogger(TestContoller.class);
	@Resource
	UserService userService=null;
	
	@RequestMapping("register")
	public String signUp(String userName,String userEmail,String userPwd, HttpServletRequest request){
		
		User user=new User(userName,userEmail,userPwd);
		 int row =userService.insertSelective(user);
		if(row==1){
			 logger.info("注册成功");
			 request.getSession().setAttribute("user", user);
			 return "redirect:/index.html";
		}else{
			 logger.info("注册失败");
			 return "redirect:/signup.html";
		}
		
		 
	}
	
	@RequestMapping("cheName")
	public void cheName(String userName,PrintWriter out){
		
		 if(userService.cheName(userName)>0){
			 out.write("yes");
		 }else{
			 out.write("no");
		}
		 
	}
	@RequestMapping("Logout")
	public String Logout(HttpServletRequest request){
		request.getSession().removeAttribute("user");
		return "redirect:/login.html";
	}
}
