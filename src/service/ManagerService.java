package service;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import entity.Music;
import entity.User;
import entity.Video;

public interface ManagerService {
	int selectMusicTypeIdByName(String musicTypeName);
	
	int selectSingerTypeIdByName(String singerTypeIdByName);
	
	Integer insertMusic(Music music);
	
	Integer insertSinger(String singerName);
	
	List<Map<String,Object>> getAllUser();
	
	List<Map<String,Object>> getAllVideo();
	
	Integer editMuisc(Music music);
	
	Integer deleteUser(int userId);
    
    Integer insertUser(User user);
    
    Integer editUser(User user);
    
    Integer deleteVideo(int videoId);
    
    Integer insertVideo(Video video);
    
    Integer editVideo(Video video);
    
    List<Map<String, Object>> selectAllSong();
	
}
