package com.myproject.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myproject.controller.RegisterController;
import com.myproject.dao.FuncTreeMapper;
import com.myproject.dao.PermissionMapper;
import com.myproject.dao.UserAccountMapper;
import com.myproject.model.FuncTree;
import com.myproject.model.Permission;
import com.myproject.model.Role;
import com.myproject.model.UserAccount;
import com.myproject.vo.MenuDto;
import com.myproject.vo.PermissionDto;
@Service
public class PermissionServiceImpl implements PermissionService {

	private static org.slf4j.Logger logger = LoggerFactory.getLogger(PermissionServiceImpl.class);
	
	@Autowired
	private PermissionMapper permissionMapper;
	
	@Autowired
	private FuncTreeMapper funcTreeMapper;
	
	@Autowired
	private UserAccountMapper userAccountMapper;
	
	@Override
	public List<PermissionDto> getPermissions(int userId) {
		List<PermissionDto> permissionDtos = new ArrayList<PermissionDto>();
		try {
			List<Permission> permissions = hasPermissions(userId);
			if(permissions!=null){
				for(Permission perm : permissions){
					PermissionDto permDto = new PermissionDto();
					BeanUtils.copyProperties(perm, permDto);
					permissionDtos.add(permDto);
				}
			}
		} catch (Exception e) {
			logger.error("查询用户权限异常:",e);
		}
		return permissionDtos;
	}
	
	@Override
	public List<MenuDto> getMenus(int userId) {
		List<MenuDto> menuDtos = new ArrayList<MenuDto>();
		try{
			List<FuncTree> menus = findMenus(userId);
			for(FuncTree ft : menus){
				MenuDto menuDto = new MenuDto();
				menuDto.setCloseIcon(ft.getCloseIcon());
				menuDto.setCode(ft.getCode());
				menuDto.setDescription(ft.getDescription());
				menuDto.setDisp(ft.getDisp());
				menuDto.setfId(ft.getfId());
				menuDto.setFuncTreeId(ft.getFuncTreeId());
				menuDto.setName(ft.getName());
				menuDto.setOpenIcon(ft.getOpenIcon());
				menuDto.setOrd(ft.getOrd());
				FuncTree parent = ft.getParent()==null?new FuncTree():ft.getParent();
				MenuDto parentDto = new MenuDto();
				BeanUtils.copyProperties(parent, parentDto);
				menuDto.setParent(parentDto);
				Permission permission = ft.getPermission()==null?new Permission():ft.getPermission();
				PermissionDto permissionDto = new PermissionDto();
				BeanUtils.copyProperties(permission, permissionDto);
				menuDto.setPermission(permissionDto);
				menuDto.setPrivilegeCode(ft.getPrivilegeCode());
				menuDto.setStatus(ft.getStatus());
				menuDtos.add(menuDto);
			}
		}catch(Exception e){
			logger.error("查询用户菜单异常:",e);
		}
		return menuDtos;
	}
	
	@Override
	public List<MenuDto> getAllMenus() {
		List<MenuDto> menuDtos = new ArrayList<MenuDto>();
		try{
			List<FuncTree> menus = findAllMenus();
			for(FuncTree ft : menus){
				MenuDto menuDto = new MenuDto();
				menuDto.setCloseIcon(ft.getCloseIcon());
				menuDto.setCode(ft.getCode());
				menuDto.setDescription(ft.getDescription());
				menuDto.setDisp(ft.getDisp());
				menuDto.setfId(ft.getfId());
				menuDto.setFuncTreeId(ft.getFuncTreeId());
				menuDto.setName(ft.getName());
				menuDto.setOpenIcon(ft.getOpenIcon());
				menuDto.setOrd(ft.getOrd());
				FuncTree parent = ft.getParent()==null?new FuncTree():ft.getParent();
				MenuDto parentDto = new MenuDto();
				BeanUtils.copyProperties(parent, parentDto);
				menuDto.setParent(parentDto);
				Permission permission = ft.getPermission()==null?new Permission():ft.getPermission();
				PermissionDto permissionDto = new PermissionDto();
				BeanUtils.copyProperties(permission, permissionDto);
				menuDto.setPermission(permissionDto);
				menuDto.setPrivilegeCode(ft.getPrivilegeCode());
				menuDto.setStatus(ft.getStatus());
				menuDtos.add(menuDto);
			}
		}catch(Exception e){
			logger.error("查询用户菜单异常:",e);
		}
		return menuDtos;
	}

	public List<Permission> hasPermissions(int userId) throws Exception{
		UserAccount user = userAccountMapper.selectByPrimaryKey(userId);
		if(user==null){
			throw new Exception("用户信息不存在");
		}
		user = userAccountMapper.selectUserAccoutWithRolesAndPermissions(user.getUserId());
		List<Permission> hasPermission = new ArrayList<Permission>();
		List<Permission> permissions = user.getPermissionsList();
		List<Role> roles = user.getRolesList();
		if(!roles.isEmpty()){
			for(Role role : roles){
				hasPermission.addAll(role.getPermissionsList());
			}
		}
		if(!permissions.isEmpty()){
			for(Permission perm : permissions){
				hasPermission.add(perm);
			}
		}
		return hasPermission;
	}
	
	public List<FuncTree> findAllMenus() throws Exception{
		List<FuncTree> menus = new ArrayList<FuncTree>();
		menus = funcTreeMapper.getAllMenus();
		return menus;
	}
	
	public List<FuncTree> findMenus(int userId) throws Exception{
		List<FuncTree> menus = new ArrayList<FuncTree>();
		menus = funcTreeMapper.findMenusByUserId(userId);
		return menus;
	}
}
