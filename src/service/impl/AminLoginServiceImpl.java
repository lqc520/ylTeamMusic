package service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AdminLoginMapper;
import entity.Admin;
import service.AdminLoginService;


@Service
public class AminLoginServiceImpl implements AdminLoginService{

	@Resource
	private AdminLoginMapper dao = null;
	
	@Override
	public Admin getAdmin(String userName, String passWord) {
		passWord = utils.AppMD5.getMD5(passWord);
		// TODO 自动生成的方法存根
		return dao.getAdmin(userName, passWord);
	}

}
