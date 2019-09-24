package service;
import entity.Admin;

public interface AdminLoginService {
	Admin getAdmin(String userName,String passWord);
}
