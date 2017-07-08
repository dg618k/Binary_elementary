package com.huadi.cedon.model;

import java.util.Date;

public class favorite {
    private Integer id;

    private Integer userId;

    private Integer entityId;

    private Date favoriteDate;

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

    public Integer getEntityId() {
        return entityId;
    }

    public void setEntityId(Integer entityId) {
        this.entityId = entityId;
    }

    public Date getFavoriteDate() {
        return favoriteDate;
    }

    public void setFavoriteDate(Date favoriteDate) {
        this.favoriteDate = favoriteDate;
    }
}