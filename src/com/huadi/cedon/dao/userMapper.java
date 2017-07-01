package com.huadi.cedon.dao;

import com.huadi.cedon.model.user;
import com.huadi.cedon.util.MyBatisRepository;

@MyBatisRepository
public interface userMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(user record);

    int insertSelective(user record);

    user selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(user record);

    int updateByPrimaryKey(user record);
}