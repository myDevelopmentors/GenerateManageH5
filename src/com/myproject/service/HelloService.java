package com.myproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.dao.TestMapper;
import com.myproject.model.Test;

@Service
public class HelloService {
	@Autowired
	private TestMapper testMapper;
	
    public String hello() {
    	 System.out.println("helloService...");
    	 Test test = testMapper.selectByPrimaryKey("1");
    	 return test.getName();
    }
}
