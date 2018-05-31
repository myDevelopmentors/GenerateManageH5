package com.myproject.service;

import java.util.List;

import com.myproject.vo.MenuDto;
import com.myproject.vo.PermissionDto;

public interface PermissionService {
	
	List<MenuDto> getMenus(int userId);
	
	List<MenuDto> getAllMenus();
	
	List<PermissionDto> getPermissions(int userId);
}
