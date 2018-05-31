package com.myproject.dao;

import java.util.List;

import com.myproject.model.Role;

public interface RoleMapper {
	
    int deleteByPrimaryKey(Short roleId);

    int insert(Role record);

    Role selectByPrimaryKey(Short roleId);

    List<Role> findRoles();
    
    int updateByPrimaryKey(Role record);
}