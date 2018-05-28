package com.myproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myproject.util.VerifyCodeUtil;

@Controller
public class LoginController {
	
	private static org.slf4j.Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	/**
	 * 打开登录页面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String toLogin(HttpServletRequest request, HttpServletResponse response) {
		//logger.debug("...login...");
		return "system/login"; // forward 到 system/login.jsp
	}
	
	/**
	 * 提交登录
	 * @param username
	 * @param password
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response,String username,String password, Model model){
		request.getSession(true).invalidate();
		if("admin".equals(username)&&"123456".equals(password)) {//TODO 登录通过
			//TODO 登录信息放入session中
			request.getSession(true).setAttribute("userName", username);
			return "redirect:/index";
		}
	
		model.addAttribute("error","1001");
		return "system/login"; // forward 到 system/login.jsp
	}
	
	/**
	 * 打开登录页面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String toIndex(HttpServletRequest request, HttpServletResponse response){
	    //TODO 获取菜单信息
		//TODO 判断是否已经登录的 request.getSession(true).getAttribute("user");
		String userName = (String) request.getSession(true).getAttribute("userName");
		if(StringUtils.isEmpty(userName))
			return "system/login";
		request.setAttribute("userName", userName);
		return "system/index"; // forward 到 system/login.jsp
	}
	
}
