package com.huadi.cedon.dao;

import com.huadi.cedon.model.entity;
import com.huadi.cedon.util.MyBatisRepository;

@MyBatisRepository
public interface entityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(entity record);

    int insertSelective(entity record);

    entity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(entity record);

    int updateByPrimaryKey(entity record);
}