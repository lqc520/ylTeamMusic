package controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.sf.json.JSONArray;
import service.MusicService;


/** 
 		* @author : RuanXiongTeng
 		* @Description : TODO 
 		* @CreateDate : 2018年7月11日 上午10:43:18 
 		* @lastModified : 2018年7月11日 上午10:43:18 
 		* @version : ylTeamMusic 1.0  
 	*/  
@Controller
public class IndexController {
	
	@Resource
	private MusicService service=null;
	
	@RequestMapping("index")
	public String getRondomMusics(Model model){
		List<Map<String, Object>> list = service.selectRodomMusics();
		List<Map<String, Object>> list1 = service.selectNewSongs();
		List<Map<String, Object>> list2 = service.selectTopSongs();
		List<Map<String, Object>> list3 = service.selectTopSinger();
		
		JSONArray jArray= JSONArray.fromObject(list);
		JSONArray newSongs = JSONArray.fromObject(list1);
		JSONArray topSongs = JSONArray.fromObject(list2);
		JSONArray topSinger = JSONArray.fromObject(list3);
		model.addAttribute("list",jArray);
		model.addAttribute("newSongs",newSongs);
		model.addAttribute("topSongs",topSongs);
		model.addAttribute("topSinger",topSinger);
		return "index";
	}
	
}
