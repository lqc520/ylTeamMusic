package service;

import java.util.List;
import java.util.Map;

public interface MusicSingerService {
	List<Map<String,Object>> findMusicBySingerForJson(int singerId);
	List<Map<String,Object>> findAllMusicSingerForJson();
	List<Map<String,Object>> findTop10Singer();
	List<Map<String,Object>> searchMusicOrSinger(Map<String, Object> map);
	List<Map<String,Object>> findHotMusic();
	List<Map<String,Object>> findnewMusic();
}
