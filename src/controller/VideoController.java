package controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



import entity.*;
import net.sf.json.JSONArray;
import service.videoService;

/** 
 		* @author : huangYingZhu
 		* @Description : TODO 
 		* @CreateDate : 2018年7月13日 下午3:34:33 
 		* @lastModified : 2018年7月13日 下午3:34:33 
 		* @version : ylTeamMusic 1.0  
 	*/  
@Controller
public class VideoController {

	@Resource
	private videoService vs=null;
	
	//跳转视屏界面
	@RequestMapping("video")
	public String GetVideo(HttpServletRequest request,Model model) {
		String pageno=request.getParameter("pageno");
		int pno;
		if(pageno==null){
			pno=1;
		}else{
			pno=Integer.parseInt(pageno);
		}
		List<Video> list=vs.GetList();
		System.out.println(list);
		PageModel<Video> pm=vs.GetPageList(pno);
		model.addAttribute("list", list);
		model.addAttribute("pm", pm);
		model.addAttribute("thispage", pm.getPageno());
		
		return "video";
	}
	//跳转视频播放界面
	@RequestMapping("video-detail")
	public String GetVideoDetail(HttpServletRequest request,Model model){
		//获取推荐列表
		List<Video> list=vs.GetList();
		model.addAttribute("list", list);
		int videoId=Integer.parseInt(request.getParameter("videoid"));
		//获取所播放视频数据
		Video v=vs.GetDetai(videoId);
		model.addAttribute("video",v);
		
		//获取评论列表
		List<Message> mesList=vs.GetMes(videoId);
		model.addAttribute("mesList",mesList);
		return "video-detail";
	}
	@RequestMapping("events")
	public String GetEventList(HttpServletRequest request,Model model){
		
		List<Video> list=vs.GetEventList();
		model.addAttribute("list", list);
		return "events";
	}
	//视屏播放界面内的评论功能
	@RequestMapping("mes")
	public void AddMes(HttpServletRequest request,PrintWriter out,Model model) {
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String comment=request.getParameter("comment");
		String vid=request.getParameter("videoid");
		java.util.Date d= new java.util.Date();
		java.sql.Date date=new java.sql.Date(d.getTime());
   
		Message mes=new Message(name, email, comment, date,Integer.parseInt(vid));
	    boolean flag=vs.addMes(mes);
	    List<Message> mesList=vs.GetMes(Integer.parseInt(vid));
	   
	    List<Map<String, Object>> map=new ArrayList<Map<String, Object>>();
	    for(int i=0;i<mesList.size();i++){
	    	Map<String, Object> me=new HashMap<String, Object>();
	    	me.put("nessagename", mesList.get(i).getNessagename());
	    	me.put("messagetime", mesList.get(i).getMessagetime().toString());
	    	me.put("messagecomment", mesList.get(i).getMessagecomment());
	    	map.add(me);
	    }
	    
	    if(!flag){
	    	mesList=null;
	    	map=null;
	    }
		JSONArray ja = JSONArray.fromObject(map);
		out.print(ja.toString());
		/*out.print(flag);*/
	   
	}
	
	
}
