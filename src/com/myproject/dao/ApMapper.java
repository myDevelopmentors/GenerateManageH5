package com.myproject.dao;

import java.util.List;

import com.myproject.model.Ap;

public interface ApMapper {
	
    int deleteByPrimaryKey(Integer apId);

    int deleteByUserId(Integer userId);
    
    int deleteByPrivId(Integer privId);
    
    int insert(Ap record);

    Ap selectByPrimaryKey(Integer apId);

    List<Ap> selectByPrivilegeId(Integer privilegeId);
    
    int updateByPrimaryKey(Ap record);
}