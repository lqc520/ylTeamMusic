package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.math.NumberUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import org.springframework.web.multipart.MultipartFile;

import entity.Music;
import entity.User;
import entity.Video;
import net.sf.json.JSONArray;
import service.ManagerService;
import service.MusicService;

/** 
 		* @author : RuanXiongTeng
 		* @Description : TODO 
 		* @CreateDate : 2018年7月13日 下午5:13:11 
 		* @lastModified : 2018年7月13日 下午5:13:11 
 		* @version : ylTeamMusic 1.0  
 	*/  
@Controller
public class ManagerController {
	Logger logger=Logger.getLogger(ManagerController.class);
	@Resource
	private MusicService musicService = null;
	@Resource
	private ManagerService managerService=null;
	
	@RequestMapping("musicManager")
	public String getAllSong(Model model,PrintWriter out){
		List<Map<String, Object>> list=musicService.selectAllSong();
		JSONArray jArray = JSONArray.fromObject(list);
		model.addAttribute("list",jArray);
		
		System.out.println(jArray);
		return "musicManager";
	}
	
	@RequestMapping("DeletedById")
	public void DeletedById(HttpServletRequest request,PrintWriter out){
		int mid=Integer.parseInt(request.getParameter("musicId"));
		boolean f =musicService.deletMusicById(mid);
		if (f) {
			out.print("yes");
		}else {
			out.print("no");
		}
	}
	
	/*@RequestParam("myFile") MultipartFile[] files,*/
	@RequestMapping("insertMusic")
	public String insertMusic(@RequestParam("myFile")MultipartFile[] files,HttpServletRequest request,PrintWriter out) throws IOException{
		if (request.getParameter("op").equals("edit")) {
			HttpSession session = request.getSession();	
			String musicPhotoURL = request.getParameter("musicUrlPhoto");
			String songURL = "";
			String uploadPath = session.getServletContext().getRealPath("/upload");
			String imagesPath = session.getServletContext().getRealPath("/images");
			Integer musicId = Integer.parseInt(request.getParameter("mid"));
			
			for (MultipartFile multipartFile : files) {
				if (multipartFile.isEmpty()) {
					songURL=request.getParameter("songURL");
					continue;
				}
				String tt = multipartFile.getContentType();
				if (multipartFile.getContentType().equals("audio/mp3")) {
					File file = new File(uploadPath+"/"+multipartFile.getOriginalFilename());
					FileUtils.copyInputStreamToFile(multipartFile.getInputStream(), file);
					songURL= "upload/"+multipartFile.getOriginalFilename();
				}else {
					File file = new File(imagesPath+"/"+multipartFile.getOriginalFilename());
					FileUtils.copyInputStreamToFile(multipartFile.getInputStream(), file);
					musicPhotoURL="images/"+multipartFile.getOriginalFilename();
				}
			}		
			String musicName= request.getParameter("musicName");
			String typeName=request.getParameter("type");
			int typeId = 0;
			if (typeName!=null) {
				typeId = managerService.selectMusicTypeIdByName(typeName);
			}
			int musicHot=0;
			
			String aString =request.getParameter("musicHot");
			boolean f = NumberUtils.isNumber(aString);
			if(f){
				musicHot=Integer.parseInt(request.getParameter("musicHot"));
			}
			
			String lyricURL=request.getParameter("lyricURL");
			String singerName=request.getParameter("singer");
			
			int singerId =managerService.selectSingerTypeIdByName(singerName);
			if (singerId==0) {
				managerService.insertSinger(singerName);
				singerId =managerService.selectSingerTypeIdByName(singerName);
			}
			Date date = new Date();
			Timestamp timeStamp = new Timestamp(date.getTime());
			
		    Music music = new Music(musicId,musicName,musicPhotoURL,singerId,musicHot,lyricURL,typeId,songURL,timeStamp);
		    Integer r = managerService.editMuisc(music);
		    
			return "redirect:/musicManager.html";
			
		}else{
			HttpSession session = request.getSession();	
			String musicPhotoURL = request.getParameter("musicUrlPhoto");
			String songURL = "";
			String uploadPath = session.getServletContext().getRealPath("/upload");
			String imagesPath = session.getServletContext().getRealPath("/images");
			for (MultipartFile multipartFile : files) {
				if (multipartFile.isEmpty()) {
					continue;
				}
				String tt = multipartFile.getContentType();
				if (multipartFile.getContentType().equals("audio/mp3")) {
					File file = new File(uploadPath+"/"+multipartFile.getOriginalFilename());
					FileUtils.copyInputStreamToFile(multipartFile.getInputStream(), file);
					songURL= "upload/"+multipartFile.getOriginalFilename();
				}else {
					File file = new File(imagesPath+"/"+multipartFile.getOriginalFilename());
					FileUtils.copyInputStreamToFile(multipartFile.getInputStream(), file);
					musicPhotoURL="images/"+multipartFile.getOriginalFilename();
				}
			}		
			String musicName= request.getParameter("musicName");
			String typeName=request.getParameter("type");
			int typeId = 0;
			if (typeName!=null) {
				typeId = managerService.selectMusicTypeIdByName(typeName);
			}
			int musicHot=0;
			
			String aString =request.getParameter("musicHot");
			boolean f = NumberUtils.isNumber(aString);
			if(f){
				musicHot=Integer.parseInt(request.getParameter("musicHot"));
			}
			
			String lyricURL=request.getParameter("lyricURL");
			String singerName=request.getParameter("singer");
			
			int singerId =managerService.selectSingerTypeIdByName(singerName);
			if (singerId==0) {
				managerService.insertSinger(singerName);
				singerId =managerService.selectSingerTypeIdByName(singerName);
			}
			Date date = new Date();
			Timestamp timeStamp = new Timestamp(date.getTime());
			
		    Music music = new Music(musicName,musicPhotoURL,singerId,musicHot,lyricURL,typeId,songURL,timeStamp);
		    Integer r = managerService.insertMusic(music);
		    
			return "redirect:/musicManager.html";
		}
	}
	
	
	@RequestMapping("userManager")
	public String getAllUser(Model model){
		List<Map<String, Object>> list  = managerService.getAllUser();
		JSONArray jArray = JSONArray.fromObject(list);
		model.addAttribute("list",jArray);
		return "userManager";
	}

	@RequestMapping("videoManager")
	public String getAllvideo(Model model){
		List<Map<String, Object>> list  = managerService.getAllVideo();
		JSONArray jArray = JSONArray.fromObject(list);
		model.addAttribute("list",jArray);
		return "videoManager";
	}
	
	
	@RequestMapping("deleteUser")
	public void deleteUser(PrintWriter out,HttpServletRequest request){
		int userId = Integer.parseInt(request.getParameter("userId"));
		Integer rowInteger=managerService.deleteUser(userId);
		if (rowInteger>0) {
			out.print("yes");
		}else {
			out.print("no");
		}
	}
	
	@RequestMapping("insertUser")
	public String insertUser(HttpServletRequest request,Model model){
		String op =request.getParameter("op");
		int userId = 0;
		if (NumberUtils.isNumber(request.getParameter("uid"))) {
			userId = Integer.parseInt(request.getParameter("uid"));
		}
		
		String UserName =request.getParameter("UserName");
		String UserEmail =request.getParameter("UserEmail");
		String UserPhoto =request.getParameter("UserPhoto");
		String UserPwd =request.getParameter("UserPwd");
		String UserAddress =request.getParameter("UserAddress");
		
		if(op.equals("add")){
			User user = new User(UserName,UserEmail,UserPwd,UserPhoto,UserAddress);
			Integer integer =managerService.insertUser(user);
		}else {
			User user = new User(userId,UserName,UserEmail,UserPwd,UserPhoto,UserAddress);
			Integer integer = managerService.editUser(user);
		}
		return "redirect:/userManager.html";
	}
	
	@RequestMapping("insertVideo")
	public String insertVideo(@RequestParam("myFile")MultipartFile[] files,HttpServletRequest request,PrintWriter out) throws IOException{
		HttpSession session = request.getSession();	
		String uploadPath = session.getServletContext().getRealPath("/video");

		String videoUrl =request.getParameter("videoUrl");
		String videoPhoto = request.getParameter("videoPhoto");
		String imagesPath = session.getServletContext().getRealPath("/images");
		for (MultipartFile multipartFile : files) {
			if (multipartFile.isEmpty()) {
				continue;
			}
			String aString = multipartFile.getContentType();
			if (multipartFile.getContentType().equals("video/mp4")) {
				File file = new File(uploadPath+"/"+multipartFile.getOriginalFilename());
				FileUtils.copyInputStreamToFile(multipartFile.getInputStream(), file);
				videoUrl= "video/"+multipartFile.getOriginalFilename();
			}else {
				File file = new File(imagesPath+"/"+multipartFile.getOriginalFilename());
				FileUtils.copyInputStreamToFile(multipartFile.getInputStream(), file);
				videoPhoto="images/"+multipartFile.getOriginalFilename();
			}
		}		
		String videoName = request.getParameter("videoName");
		String videoAuthor = request.getParameter("videoAuthor");
		
		Date date = new Date();
		Timestamp timeStamp = new Timestamp(date.getTime());
		int videoId=0;
		if (request.getParameter("op").equals("edit")) {
			String vString=request.getParameter("vid");
			if (NumberUtils.isNumber(vString)) {
				videoId = Integer.parseInt(vString);
			}
			
			Video video = new Video(videoId,videoName,videoAuthor,videoPhoto,videoUrl,timeStamp);
			managerService.editVideo(video);
			
		}else{
			Video video = new Video(videoName,videoAuthor,videoPhoto,videoUrl,timeStamp);
			managerService.insertVideo(video);
		}
		return "redirect:/videoManager.html";
		
	}
	
	@RequestMapping("deleteVideo")
	public void deleteVideo(PrintWriter out,HttpServletRequest request){
		int videoId = Integer.parseInt(request.getParameter("videoId"));
		Integer rowInteger=managerService.deleteVideo(videoId);
		if (rowInteger>0) {
			out.print("yes");
		}else {
			out.print("no");
		}
	}
	
	
	

}
