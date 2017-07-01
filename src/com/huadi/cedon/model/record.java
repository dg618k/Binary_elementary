package com.huadi.cedon.model;

import java.util.Date;

public class record {
    private Integer id;

    private Integer userId;

    private Integer goodsId;

    private Integer consumeNumber;

    private Date consumeDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getConsumeNumber() {
        return consumeNumber;
    }

    public void setConsumeNumber(Integer consumeNumber) {
        this.consumeNumber = consumeNumber;
    }

    public Date getConsumeDate() {
        return consumeDate;
    }

    public void setConsumeDate(Date consumeDate) {
        this.consumeDate = consumeDate;
    }
}