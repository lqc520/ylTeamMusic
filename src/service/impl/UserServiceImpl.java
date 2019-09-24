package service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.UserMapper;
import entity.User;
import entity.UserExample;
import service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Resource
	private UserMapper userMapper= null;
	
	
	
	@Override
	public int insertSelective(User record) {
		record.setUserpwd(utils.AppMD5.getMD5(record.getUserpwd()));
		return userMapper.insertSelective(record);
	}
	@Override
	public List<User> selectByExample(UserExample example) {
		return userMapper.selectByExample(example);
	}
	@Override
	public int cheName(String userName) {
		return userMapper.cheName(userName);
	}
	@Override
	public User getUser(Map<String, Object> map) {
		return userMapper.getUser(map);
	}

}
