package com.huadi.cedon.util;

import java.sql.SQLException;
import java.util.LinkedHashSet;

import com.huadi.cedon.jdbc.dao.BaseDao;

public class Follow {
	
	public void follow(int userId, int otherId){
		try {
			if((BaseDao.findOne("select id from friend where userId = ? and otherId = ?", String.valueOf(userId), String.valueOf(otherId))).isEmpty()){
				BaseDao.updateSql("insert into friend (relection,userId,otherId) values(?,?,?)", "1",userId+"",otherId+"");
			}else{
				BaseDao.updateSql(" delete from friend where (userId,otherId) values(?,?)", userId+"",otherId+"");
				BaseDao.updateSql("insert into friend (relection,userId,otherId) values(?,?,?)", "1",String.valueOf(userId),String.valueOf(otherId));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void decline(int userId, int otherId){
		try {
			BaseDao.updateSql(" delete from friend where (userId,otherId) values(?,?,?)",String.valueOf(userId),String.valueOf(otherId));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void blacklist(int userId, int otherId){
		try {
			if((BaseDao.findOne("select id from friend where userId = ? and otherId = ?", String.valueOf(userId), String.valueOf(otherId))).isEmpty()){
				BaseDao.updateSql("insert into friend (relection,userId,otherId) values(?,?,?)", "0",userId+"",otherId+"");
			}else{
				BaseDao.updateSql(" delete from friend where (userId,otherId) values(?,?)", userId+"",otherId+"");
				BaseDao.updateSql("insert into friend (relection,userId,otherId) values(?,?,?)", "0",String.valueOf(userId),String.valueOf(otherId));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
