package com.myproject.dao;

import java.util.List;

import com.myproject.model.FuncTree;

public interface FuncTreeMapper {
	
    int deleteByPrimaryKey(Short funcTreeId);

    int insert(FuncTree record);

    FuncTree selectByPrimaryKey(Short funcTreeId);

    FuncTree selectWithPermissionByFuncTreeId(Short funcTreeId);
    
    int updateByPrimaryKey(FuncTree record);
    
    List<FuncTree> findMenusByUserId(Integer userId);
    
    List<FuncTree> getAllMenus();
    
    List<FuncTree> getFuncTree();
    
    
}