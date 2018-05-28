package com.myproject.dao;

import com.myproject.model.Test;

public interface TestMapper {
    int insert(Test record);
    Test selectByPrimaryKey(String id);
}