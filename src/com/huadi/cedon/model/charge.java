package com.huadi.cedon.model;

import java.util.Date;

public class charge {
    private Integer id;

    private Integer userId;

    private Date rechargeDate;

    private Integer rechargeMoney;

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

    public Date getRechargeDate() {
        return rechargeDate;
    }

    public void setRechargeDate(Date rechargeDate) {
        this.rechargeDate = rechargeDate;
    }

    public Integer getRechargeMoney() {
        return rechargeMoney;
    }

    public void setRechargeMoney(Integer rechargeMoney) {
        this.rechargeMoney = rechargeMoney;
    }
}