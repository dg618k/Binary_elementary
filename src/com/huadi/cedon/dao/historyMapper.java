package com.huadi.cedon.dao;

import com.huadi.cedon.model.history;

public interface historyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(history record);

    int insertSelective(history record);

    history selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(history record);

    int updateByPrimaryKey(history record);
}