package service;

import java.util.List;
import java.util.Map;

import entity.Music;

/** 
 		* @author : RuanXiongTeng
 		* @Description : TODO 
 		* @CreateDate : 2018年7月11日 上午9:11:07 
 		* @lastModified : 2018年7月11日 上午9:11:07 
 		* @version : ylTeamMusic 1.0  
 	*/  
public interface MusicService {
	public List<Map<String, Object>> selectRodomMusics();
	public List<Map<String, Object>> selectNewSongs();
	
	public List<Map<String, Object>> selectTopSongs();
    
	public List<Map<String, Object>> selectTopSinger();
	
	public List<Map<String, Object>> selectAllSong();
	
	public boolean deletMusicById(int musicId);
	
	public boolean insertMusic(Music music);
}
