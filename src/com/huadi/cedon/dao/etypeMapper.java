package com.huadi.cedon.dao;

import com.huadi.cedon.model.etype;
import com.huadi.cedon.util.MyBatisRepository;

@MyBatisRepository
public interface etypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(etype record);

    int insertSelective(etype record);

    etype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(etype record);

    int updateByPrimaryKey(etype record);
}