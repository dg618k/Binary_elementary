package com.huadi.cedon.dao;

import com.huadi.cedon.model.gtype;

public interface gtypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(gtype record);

    int insertSelective(gtype record);

    gtype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(gtype record);

    int updateByPrimaryKey(gtype record);
}