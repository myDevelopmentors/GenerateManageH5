package com.myproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myproject.service.HelloService;

@Controller
public class HelloController {
    @Autowired
    private HelloService helloService;
    
    @RequestMapping(value="/hello",method=RequestMethod.GET)
	public String toLogin(HttpServletRequest request, HttpServletResponse response) {
		//logger.debug("...login...");
		return "system/index2";
	}
}
