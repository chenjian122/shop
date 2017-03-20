package com.shop.biz.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSON;
import com.shop.biz.DemoBiz;
import com.shop.dao.UserMapper;
import com.shop.model.User;

@Component
public class DemoBizImpl implements DemoBiz{
	
	private static Logger logger = LoggerFactory.getLogger(DemoBizImpl.class);

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public String speakInEnglish() {
		
		User user = userMapper.selectUserListById();
		
		logger.info(JSON.toJSONString(user));
		
		List<User> userList =userMapper.selectUserList();
		
		logger.info(JSON.toJSONString(userList));
		
		return "helloWorld";
	}
	
}
