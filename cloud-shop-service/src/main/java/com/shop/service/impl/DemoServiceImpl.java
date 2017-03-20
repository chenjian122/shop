package com.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.biz.DemoBiz;
import com.shop.service.DemoService;

@Service
public class DemoServiceImpl implements DemoService{

	@Autowired
	private DemoBiz demoBiz;
	
	@Override
	public String speak() {
		
		return demoBiz.speakInEnglish();
	}

}
