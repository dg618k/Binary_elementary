package com.huadi.cedon.dao;

import com.huadi.cedon.model.goods;
import com.huadi.cedon.util.MyBatisRepository;

@MyBatisRepository
public interface goodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(goods record);

    int insertSelective(goods record);

    goods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(goods record);

    int updateByPrimaryKey(goods record);
}