package com.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.shop.model.User;

@Repository
public interface UserMapper {
	
	public List<User> selectUserList();
	
	@Select("select user_name from t_user where user_id = 1")
	User selectUserListById();
}
