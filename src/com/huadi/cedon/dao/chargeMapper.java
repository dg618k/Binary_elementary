package com.huadi.cedon.dao;

import com.huadi.cedon.model.charge;

public interface chargeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(charge record);

    int insertSelective(charge record);

    charge selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(charge record);

    int updateByPrimaryKey(charge record);
}