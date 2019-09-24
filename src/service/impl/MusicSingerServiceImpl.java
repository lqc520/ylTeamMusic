package service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.MusicSingerMapper;
import service.MusicSingerService;
@Service
public class MusicSingerServiceImpl implements MusicSingerService{
	@Resource
	private MusicSingerMapper musicSingerMapper ;
	
	@Override
	public List<Map<String, Object>> findMusicBySingerForJson(int singerId) {
		return musicSingerMapper.findMusicBySingerForJson(singerId);
	}
	@Override
	public List<Map<String, Object>> findAllMusicSingerForJson() {
		// TODO 自动生成的方法存根
		return musicSingerMapper.findAllMusicSingerForJson();
	}
	@Override
	public List<Map<String, Object>> findTop10Singer() {
		// TODO 自动生成的方法存根
		return musicSingerMapper.findTop10Singer();
	}
	

	@Override
	public List<Map<String, Object>> searchMusicOrSinger(Map<String, Object> map) {
		// TODO 自动生成的方法存根
		return musicSingerMapper.searchMusicOrSinger(map);
	}
	@Override
	public List<Map<String, Object>> findHotMusic() {
		// TODO 自动生成的方法存根
		return musicSingerMapper.findHotMusic();
	}
	@Override
	public List<Map<String, Object>> findnewMusic() {
		// TODO 自动生成的方法存根
		return musicSingerMapper.findnewMusic();
	}

}
