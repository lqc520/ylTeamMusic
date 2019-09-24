package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;


import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;



import net.sf.json.JSONArray;
import service.MusicSingerService;

/** 
 		* @author : lingQiCheng
 		* @Description : TODO 
 		* @CreateDate : 2018年7月13日 上午11:20:23 
 		* @lastModified : 2018年7月14日 上午11:20:23 
 		* @version : ylTeamMusic 1.0  
 	*/  
@Controller
public class MusicSingerController {
	
	private Logger logger = Logger.getLogger(TestContoller.class);
	MusicSingerService musicSingerService;
	
	
	public MusicSingerService getMusicSingerService() {
		return musicSingerService;
	}

	@Resource
	public void setMusicSingerService(MusicSingerService musicSingerService) {
		this.musicSingerService = musicSingerService;
	}


	@RequestMapping("listen")
	public String findMusicBySingerForJson(HttpServletRequest request){
		System.out.println("MusicSingerController.findMusicBySingerForJson");
		JSONArray jsonAll=JSONArray.fromObject(musicSingerService.findAllMusicSingerForJson());
		request.setAttribute("jsonAll", jsonAll);
		return "listen";
	}
	@RequestMapping(value="/searchListen")
	public void findForwordMusicBySingerForJson(int singerId,HttpServletRequest request,PrintWriter out){
		System.out.println("MusicSingerController.findForwordMusicBySingerForJson");
		JSONArray json=JSONArray.fromObject(musicSingerService.findMusicBySingerForJson(singerId));
		System.out.println(json);
		request.getSession().setAttribute("json", json);
		out.write("yes");
	}
	@RequestMapping("mysearch")
	public String findMusicBySinger(HttpServletRequest request,String content){
		System.out.println("MusicSingerController.findMusicBySinger");
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("content", content);
		JSONArray data=JSONArray.fromObject(musicSingerService.searchMusicOrSinger(map));
		request.setAttribute("data", data);
		System.out.println(data);
		return "search";
	}
	@RequestMapping("MusicTop10")
	public String findMusicBySingerHotTop10(HttpServletRequest request){
		System.out.println("MusicSingerController.findMusicBySingerHotTop10");
		JSONArray data=JSONArray.fromObject(musicSingerService.findTop10Singer());
		request.setAttribute("data", data);
		System.out.println(data);
		return "MusicTop10";
	}

	@RequestMapping("heatrankings")
	public String findHotMusic(HttpServletRequest request){
		System.out.println("MusicSingerController.findHotMusic");
		JSONArray data =JSONArray.fromObject(musicSingerService.findHotMusic());
		request.setAttribute("data", data);
		return "heatrankings";
		
	}
	@RequestMapping("newMusic")
	public String findNewMusic(HttpServletRequest request){
		System.out.println("MusicSingerController.findNewMusic");
		JSONArray data =JSONArray.fromObject(musicSingerService.findnewMusic());
		request.setAttribute("data", data);
		return "newMusic";
		
	}

}
