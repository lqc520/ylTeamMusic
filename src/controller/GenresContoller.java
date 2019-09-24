package controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import entity.ChangeMusicType;
import entity.Music;
import entity.MusicType;
import entity.PageModel;
import net.sf.json.JSONArray;
import service.musicGenresService;

/** 
 		* @author : huangYingZhu
 		* @Description : TODO 
 		* @CreateDate : 2018年7月11日 下午2:21:03 
 		* @lastModified : 2018年7月11日 下午2:21:03 
 		* @version : ylTeamMusic 1.0  
 	*/  
@Controller
public class GenresContoller {

	@Resource
	private musicGenresService genresservice=null;
	

	@RequestMapping("genres")
	public String GetType(HttpServletRequest request,Model model){
		//获取音乐类别的列表
		List<MusicType> list=genresservice.GetTypeList();
		model.addAttribute("musictype", list);
		
		//获取分类分页下的音乐列表
		String musictypeid=request.getParameter("musictypeid");
		String pageno=request.getParameter("pageno");
		int mtid,pno;
		if(musictypeid==null||musictypeid==""){
			mtid=0;
		}else{
			mtid=Integer.parseInt(musictypeid);
		}
		if(pageno==null){
			pno=1;
		}else{
			pno=Integer.parseInt(pageno);
		}
		PageModel<Music> pm= genresservice.GetPageList(mtid, pno);
		model.addAttribute("pm", pm);
		model.addAttribute("thispage", pm.getPageno());
		model.addAttribute("nowtype", mtid);
		
		
		
		//转换成 ChangeMusicType 用于播放音乐存于Json
		List<Music> mu=pm.getData();
		List<ChangeMusicType> cm=new ArrayList<ChangeMusicType>();
		for(int i=0;i<mu.size();i++){
			cm.add(new ChangeMusicType(mu.get(i).getMusicname(), mu.get(i).getLyricurl(), mu.get(i).getSongurl(), mu.get(i).getMusicphotourl()));
		}

		JSONArray json=JSONArray.fromObject(cm);
		model.addAttribute("json", json);
		System.out.println(json);
		return "genres";
	}
}
