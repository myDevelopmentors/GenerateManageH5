package com.myproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.myproject.model.RolePermission;

public interface RolePermissionMapper {
	
    int deleteByPrimaryKey(Integer rolePrivId);

    int deleteByRoleIdPermId(@Param("roleId")Integer roleId,@Param("privilegeId")Integer privilegeId);
    
    int insert(RolePermission record);

    RolePermission selectByPrimaryKey(Integer rolePrivId);

    int updateByPrimaryKey(RolePermission record);
    
    public List<Integer> findPermissionIds(Integer roleId);
    
    public List<Integer> findPermissionIdsV2(Integer roleId);
    
    public List<Integer> findPermissionIdsV3(Integer roleId);
    
    public List<Integer> findPermissionIdsIfEmptyPerm(Integer roleId);
    
    public List<RolePermission> selectByRoleId(Integer roleId);
    
    public List<RolePermission> selectByPrivilegeId(Integer privilegeId);
    
}