package service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ManagerMapper;
import dao.MusicMapper;
import entity.Music;
import entity.User;
import entity.Video;
import service.ManagerService;
import utils.AppMD5;

@Service
public class ManagerServiceImpl implements ManagerService{
	
	@Resource
	private ManagerMapper dao = null;
	
	@Override
	public int selectMusicTypeIdByName(String musicTypeName) {
		// TODO 自动生成的方法存根
		int i =dao.selectMusicTypeIdByName(musicTypeName);
		return i;
	}

	@Override
	public int selectSingerTypeIdByName(String singerTypeIdByName) {
		// TODO 自动生成的方法存根
		int i=0;
		String string =dao.selectSingerTypeIdByName(singerTypeIdByName);
		if (string!=null) {
			i =Integer.parseInt(string);
		}else {
			i = 0;
		}
		return i;
	}

	@Override
	public Integer insertMusic(Music music) {
		// TODO 自动生成的方法存根
		Integer r = dao.insertMusic(music);
		
		return r;
	}

	@Override
	public Integer insertSinger(String singerName) {
		
		return dao.insertSinger(singerName);
	}

	@Override
	public List<Map<String, Object>> getAllUser() {
		// TODO 自动生成的方法存根
		return dao.getAllUser();
	}

	@Override
	public List<Map<String, Object>> getAllVideo() {
		// TODO 自动生成的方法存根
		return dao.getAllVideo();
	}

	@Override
	public Integer editMuisc(Music music) {
		// TODO 自动生成的方法存根
		return dao.editMuisc(music);
	}

	@Override
	public Integer deleteUser(int userId) {
		// TODO 自动生成的方法存根
		return dao.deleteUser(userId);
	}

	@Override
	public Integer insertUser(User user) {
		user.setUserpwd(AppMD5.getMD5(user.getUserpwd()));
		return dao.insertUser(user);
	}

	@Override
	public Integer editUser(User user) {
		user.setUserpwd(AppMD5.getMD5(user.getUserpwd()));
		return dao.editUser(user);
	}

	@Override
	public Integer deleteVideo(int videoId) {
		// TODO 自动生成的方法存根
		return dao.deleteVideo(videoId);
	}

	@Override
	public Integer insertVideo(Video user) {
		// TODO 自动生成的方法存根
		return dao.insertVideo(user);
	}

	@Override
	public Integer editVideo(Video user) {
		// TODO 自动生成的方法存根
		return dao.editVideo(user);
	}

	@Override
	public List<Map<String, Object>> selectAllSong() {
		// TODO 自动生成的方法存根
		return dao.selectAllSong();
	}
	
	
	
}
