package service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.MusicMapper;
import entity.Music;

@Service
public class MusicServiceImpl implements service.MusicService{
	@Resource
	private MusicMapper dao=null;
	@Override
	public List<Map<String, Object>> selectRodomMusics() {
		return dao.selectRodomMusics();
	}
	@Override
	public List<Map<String, Object>> selectNewSongs() {
		// TODO 自动生成的方法存根
		return dao.selectNewSongs();
	}
	@Override
	public List<Map<String, Object>> selectTopSongs() {
		return dao.selectTopSongs();
	}
	@Override
	public List<Map<String, Object>> selectTopSinger() {
		// TODO 自动生成的方法存根
		return dao.selectTopSinger();
	}
	
	@Override
	public List<Map<String, Object>> selectAllSong() {
		// TODO 自动生成的方法存根
		return dao.selectAllSong();
	}
	@Override
	public boolean deletMusicById(int musicId) {
		// TODO 自动生成的方法存根
		return dao.deleteByPrimaryKey(musicId)>0;
	}
	@Override
	public boolean insertMusic(Music music) {
		// TODO 自动生成的方法存根
		return dao.insertSelective(music)>0;
	}
}
