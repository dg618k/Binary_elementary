package com.huadi.cedon.dao;

import com.huadi.cedon.model.comment;
import com.huadi.cedon.util.MyBatisRepository;

@MyBatisRepository
public interface commentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(comment record);

    int insertSelective(comment record);

    comment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(comment record);

    int updateByPrimaryKeyWithBLOBs(comment record);

    int updateByPrimaryKey(comment record);
}