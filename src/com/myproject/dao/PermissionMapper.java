package com.myproject.dao;

import java.util.List;

import com.myproject.model.FuncTree;
import com.myproject.model.Permission;

public interface PermissionMapper {
	
    int deleteByPrimaryKey(Short privilegeId);

    int insert(Permission record);

    Permission selectByPrimaryKey(Short privilegeId);
    
    Permission selectPermissionByPrivilegeCode(String privilegeCode);

    int updateByPrimaryKey(Permission record);
    
//    List<Permission> findPermissions(Integer userId);
    
    List<FuncTree> findAllPermissions();
}