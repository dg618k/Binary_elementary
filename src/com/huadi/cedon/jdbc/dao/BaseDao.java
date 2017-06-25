package com.huadi.cedon.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.huadi.cedon.jdbc.util.JDBCutil;
import com.mysql.jdbc.ResultSetMetaData;
public class BaseDao {
	
	public static List<Map<String, Object>>  findList(String sql,String...strings ){
		List<Map<String, Object>> l = new ArrayList<Map<String, Object>>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = JDBCutil.getConnection();//获取链接
		try {
			pstmt = conn.prepareStatement(sql);//
			if (strings != null){//
				for (int i = 0; i < strings.length; i++) {
					pstmt.setObject(i + 1, strings[i]);
				}
			}
			rs =  pstmt.executeQuery();//运行SQL
			while (rs.next()) {
				l.add(toEntity(rs));//解析结果集
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return l;
	}
	/**
	 * 查询单个对象
	 * @param sql
	 * @param strings
	 * @return
	 */
	public static Map<String, Object> findOne(String sql,String...strings ){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = JDBCutil.getConnection();//获取链接
		try {
			pstmt = conn.prepareStatement(sql);//
			if (strings != null){//
				for (int i = 0; i < strings.length; i++) {
					pstmt.setObject(i + 1, strings[i]);
				}
			}
			rs =  pstmt.executeQuery();//运行SQL
			while (rs.next()) {
				return toEntity(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static Map<String, Object> toEntity(ResultSet rs) {
		 Map<String, Object> map = new HashMap<String, Object>();
		try {
			ResultSetMetaData data = (ResultSetMetaData) rs.getMetaData();//获取 运行sql的查询字段
			for (int i = 1; i <= data.getColumnCount(); i++) {
				String columnName = data.getColumnName(i);
				map.put(columnName, rs.getObject(columnName));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return map;
		
	}
	/**
	 * 修改--
	 * @param sql
	 * @param strings  
	 * @return
	 * @throws SQLException 
	 */
	public static boolean updateSql(String sql,String...strings) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = JDBCutil.getConnection();//获取链接
			pstmt = conn.prepareStatement(sql);//
			if (strings != null){//
				for (int i = 0; i < strings.length; i++) {
					pstmt.setObject(i + 1, strings[i]);
				}
			}
			int i =  pstmt.executeUpdate();
			if(i>0){
				return true;
			}
		return false;
	}
	
	public static void main(String[] args) throws SQLException {
		System.out.println("====>List"+findList("select *  from  login   limit 0,50"));
		System.out.println("====>List"+findList("select *  from  login   where user_id = ? ","1"));
		System.out.println(findOne("select *  from  login   where user_id = ? ","1"));
		//UPDATE tbl_name SET col_name1=value1, col_name2=value2, … WHERE conditions
		System.out.println("=====>update="+updateSql("update login  set  user_name = ?  where user_id = ? ", "李四","2"));
		System.out.println("=====>update="+updateSql(" insert into login (user_name,user_password,real_name) values(?,?,?)", "张三","123456","王麻子"));
	}
}
