package com.myproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class RegisterController {
	
	private static org.slf4j.Logger logger = LoggerFactory.getLogger(RegisterController.class);
	
	/**
	 * 打开注册页面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String toLogin(HttpServletRequest request, HttpServletResponse response) {
		return "system/register";
	}
	
	/**
	 * 提交注册
	 * @param username
	 * @param password
	 * @param email
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(HttpServletRequest request, HttpServletResponse response,String username,String password,String email, Model model){
		logger.info("register info:{},{},{}.",username,password,email);
		boolean success = true; //注册是否成功
		if(success) {
			model.addAttribute("msg","2000"); //注册成功
			return "system/login";
		}
		else {
			model.addAttribute("msg","2001"); //注册失败
			return "system/register";
		}
	}
	
}
