package com.myproject.dao;

import com.myproject.model.Privilege;

public interface PrivilegeMapper {
    int deleteByPrimaryKey(Integer privilegeId);

    int insert(Privilege record);

    Privilege selectByPrimaryKey(Integer privilegeId);

    int updateByPrimaryKey(Privilege record);
}