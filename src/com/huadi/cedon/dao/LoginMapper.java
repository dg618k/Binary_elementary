package com.huadi.cedon.dao;

import com.huadi.cedon.model.Login;
import com.huadi.cedon.util.MyBatisRepository;

@MyBatisRepository
public interface LoginMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(Login record);

    int insertSelective(Login record);

    Login selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(Login record);

    int updateByPrimaryKeyWithBLOBs(Login record);

    int updateByPrimaryKey(Login record);
}