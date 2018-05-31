package com.myproject.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myproject.service.PermissionService;
import com.myproject.vo.MenuDto;
import com.myproject.vo.PermissionDto;

@Controller
public class LoginController {
	@Autowired
	private PermissionService permissionService;
	 
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
	
		model.addAttribute("msg","1001");
		return "system/login"; // forward 到 system/login.jsp
	}
	
	/**
	 * 打开主页面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String toIndex(HttpServletRequest request, HttpServletResponse response){
		String userName = (String) request.getSession(true).getAttribute("userName");
		if(StringUtils.isEmpty(userName))
			return "system/login";
		
		request.setAttribute("userName", userName);
		Integer userId = 2;
		
		List<MenuDto> funcTreeList = new ArrayList<MenuDto>();
		//获取该用户权限下应该显示的所有菜单列表
		if(userName.equals("admin")){
			funcTreeList = permissionService.getAllMenus();
		}else{
			funcTreeList = permissionService.getMenus(userId);
		}
		
		//获取该用户的所有权限
		List<PermissionDto> userPermissions = new ArrayList<PermissionDto>();
		for(PermissionDto permission:permissionService.getPermissions(userId)){
			if(!StringUtils.isEmpty(permission.getPrivilegeCode())){ //TODO ISNOTBLANK
				userPermissions.add(permission);
			}
		}
		//获取一级菜单
		List<MenuDto> menus = new ArrayList<MenuDto>();
		for(MenuDto ft : funcTreeList){
			if(ft.getFuncTreeId()!=null && ft.getParent().getfId()==null){
				menus.add(ft);
			}
		}
		//为所有一级菜单添加二级菜单
		for(MenuDto parent: menus){
			parent.setChildren(new ArrayList<MenuDto>());
			for(MenuDto ft : funcTreeList){
				if(parent.getFuncTreeId().equals(ft.getfId())){
					if((ft.getStatus()==0 || ft.getStatus()==null) && (ft.getPermission().getStatus()==null ||  ft.getPermission().getStatus()==0 ) ){
						if(ft.getPrivilegeCode()!=null && !"".equals(ft.getPrivilegeCode())){
							for(PermissionDto pd : userPermissions){
								if(pd.getPrivilegeCode().equals(ft.getPrivilegeCode())  ){
									parent.getChildren().add(ft);
								}
							}
						}else{
							parent.getChildren().add(ft);
						}
					}
				}
			}
		}
		//为所有二级菜单添加三级菜单
		for(MenuDto parent: menus){
			List<MenuDto> childrenList =  parent.getChildren();
			if(childrenList.size()>0){
				for(MenuDto child : childrenList){
					child.setChildren(new ArrayList<MenuDto>());
					for(MenuDto ft : funcTreeList){
						if(child.getFuncTreeId().equals(ft.getfId())){
							if((ft.getStatus()==0 || ft.getStatus()==null) && (ft.getPermission().getStatus()==null ||  ft.getPermission().getStatus()==0 )){
								if(ft.getPrivilegeCode()!=null && !"".equals(ft.getPrivilegeCode())){
									for(PermissionDto pd : userPermissions){
										if(pd.getPrivilegeCode().equals(ft.getPrivilegeCode())){
											child.getChildren().add(ft);
										}
									}
								}else{
									child.getChildren().add(ft);
								}
							}
						}
					}
				}
			}
		}
		
		try {
			//如果三级菜单为空，并且二级菜单的权限代码为空，移除此二级菜单
			for(int i= menus.size()-1;i>=0;i--){
				MenuDto parent = menus.get(i);
				if(parent.getChildren()!=null && !parent.getChildren().isEmpty()){
					for(int k=parent.getChildren().size()-1;k>=0;k--){
						MenuDto child = parent.getChildren().get(k);
						if(( child.getChildren()==null || child.getChildren().isEmpty()) && StringUtils.isEmpty(child.getPrivilegeCode())  ){
							parent.getChildren().remove(k);
						}
					}
				}
			}
			//如果一级菜单的权限代码为空，不存在二级菜单，则移除此一级菜单
			for(int i=menus.size()-1;i>=0;i--){
				MenuDto parent = menus.get(i);
				if((parent.getChildren()==null || parent.getChildren().isEmpty()) && StringUtils.isEmpty(parent.getPrivilegeCode())){
					menus.remove(i);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.getSession(true).setAttribute( "menus", menus);
		//request.setAttribute("menus", menus);
		return "system/index";
	}
	
}
