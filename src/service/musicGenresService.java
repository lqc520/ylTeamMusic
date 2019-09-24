package service;


import java.util.List;

import entity.Music;
import entity.MusicType;
import entity.PageModel;

/** 
 		* @author : huangYingZhu
 		* @Description : TODO 
 		* @CreateDate : 2018年7月11日 下午2:21:16 
 		* @lastModified : 2018年7月11日 下午2:21:16 
 		* @version : ylTeamMusic 1.0  
 	*/  
public interface musicGenresService {

	public List<MusicType> GetTypeList();
	public PageModel<Music> GetPageList(int musictypeid,int pageno);
}
