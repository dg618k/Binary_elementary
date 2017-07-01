package com.huadi.cedon.dao;

import com.huadi.cedon.model.charge;
import com.huadi.cedon.util.MyBatisRepository;

@MyBatisRepository
public interface chargeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(charge record);

    int insertSelective(charge record);

    charge selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(charge record);

    int updateByPrimaryKey(charge record);
}