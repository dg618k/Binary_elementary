package com.huadi.cedon.dao;

import com.huadi.cedon.model.favorite;

public interface favoriteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(favorite record);

    int insertSelective(favorite record);

    favorite selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(favorite record);

    int updateByPrimaryKey(favorite record);
}