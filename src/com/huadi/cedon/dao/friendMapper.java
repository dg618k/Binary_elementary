package com.huadi.cedon.dao;

import com.huadi.cedon.model.friend;

public interface friendMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(friend record);

    int insertSelective(friend record);

    friend selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(friend record);

    int updateByPrimaryKey(friend record);
}