package com.huadi.cedon.dao;

import com.huadi.cedon.model.record;

public interface recordMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(record record);

    int insertSelective(record record);

    record selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(record record);

    int updateByPrimaryKey(record record);
}