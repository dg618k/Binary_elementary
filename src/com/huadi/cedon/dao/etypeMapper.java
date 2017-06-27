package com.huadi.cedon.dao;

import com.huadi.cedon.model.etype;

public interface etypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(etype record);

    int insertSelective(etype record);

    etype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(etype record);

    int updateByPrimaryKey(etype record);
}