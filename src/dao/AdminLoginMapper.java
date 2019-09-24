package dao;

import org.apache.ibatis.annotations.Param;

import entity.Admin;

public interface AdminLoginMapper {
	Admin getAdmin(@Param("adminName")String adminName,@Param("adminPwd")String adminPwd);
}
