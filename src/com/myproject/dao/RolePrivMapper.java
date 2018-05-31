package com.myproject.dao;

import com.myproject.model.RolePriv;

public interface RolePrivMapper {
	
    int deleteByPrimaryKey(Integer rolePrivId);

    int insert(RolePriv record);

    RolePriv selectByPrimaryKey(Integer rolePrivId);

    int updateByPrimaryKey(RolePriv record);
    
    int deleteByRoleId(Short roleId);
    
}