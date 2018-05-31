package com.myproject.dao;

import java.util.List;

import com.myproject.model.Permission;
import com.myproject.model.PrivilegeGroup;

public interface PrivilegeGroupMapper {
    int deleteByPrimaryKey(Short privilegeGroupId);

    int insert(PrivilegeGroup record);

    PrivilegeGroup selectByPrimaryKey(Short privilegeGroupId);

    int updateByPrimaryKey(PrivilegeGroup record);
    
    public List<PrivilegeGroup> findAllPermissionGroup();
    
    public List<PrivilegeGroup> findAllPermissionGroupV2();
    
    public List<Permission> getPermissionsByPrivilegeGroupId(Short privilegeGroupId);
    
}