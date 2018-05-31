package com.myproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.myproject.model.Ar;

public interface ArMapper {
	
    int deleteByPrimaryKey(Integer arId);

    public void deleteUserRoleByRoleId(Short roleId);
    
    public void deleteUserRoleByUserId(Short userId);
    
    int insert(Ar record);

    Ar selectByPrimaryKey(Integer arId);
    
    Ar selectByUserIdRoleId(@Param("userId")Integer userId,@Param("roleId")Integer roleId);
    
    public List<Integer> getRoleIdList(Integer userId);
    
    int updateByPrimaryKey(Ar record);
}