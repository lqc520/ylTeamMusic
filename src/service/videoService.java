package service;

import java.util.List;

import entity.*;

/** 
 		* @author : huangYingZhu
 		* @Description : TODO 
 		* @CreateDate : 2018年7月13日 下午3:52:17 
 		* @lastModified : 2018年7月13日 下午3:52:17 
 		* @version : ylTeamMusic 1.0  
 	*/  
public interface videoService {

	public List<Video> GetList();
	public PageModel<Video> GetPageList(int pageno);
	public Video GetDetai(int videoId);
	public List<Video> GetEventList();
	public boolean addMes(Message mes);
	public List<Message> GetMes(int vid);
}
