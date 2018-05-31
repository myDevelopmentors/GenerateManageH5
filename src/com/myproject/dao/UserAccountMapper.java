package com.myproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.myproject.model.UserAccount;

public interface UserAccountMapper {
	
    int deleteByPrimaryKey(Integer userId);

    int insert(UserAccount record);

    UserAccount selectByPrimaryKey(Integer userId);
    
    UserAccount selectByUserName(String userName);

    UserAccount selectUserAccoutWithRolesAndPermissions(Integer userId);
    
    int updateByPrimaryKey(UserAccount record);
    
    public List<UserAccount> findList(UserAccount userAccount);
    
    public List<UserAccount> findAllList();
    
    public void resetPassword(@Param("password") String password,@Param("salt") String salt,@Param("userId'") Integer userId);
    
}