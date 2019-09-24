package service;

import java.util.List;
import java.util.Map;

import entity.User;
import entity.UserExample;

public interface UserService {
	 User getUser(Map<String, Object> map);
	 int insertSelective(User record);
	 List<User> selectByExample(UserExample example);
	 int cheName(String userName);
	
}
