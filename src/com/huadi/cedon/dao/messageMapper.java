package com.huadi.cedon.dao;

import com.huadi.cedon.model.message;
import com.huadi.cedon.util.MyBatisRepository;

@MyBatisRepository
public interface messageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(message record);

    int insertSelective(message record);

    message selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(message record);

    int updateByPrimaryKeyWithBLOBs(message record);

    int updateByPrimaryKey(message record);
}