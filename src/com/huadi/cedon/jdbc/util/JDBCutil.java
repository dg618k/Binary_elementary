package com.huadi.cedon.jdbc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCutil {
//	private static final String PROPERTIES  = "JDBC.properties";
	private static final String DRIVER  = "com.mysql.jdbc.Driver";
	private static final String RUL 	= "jdbc:mysql://localhost:3306/ercif?useUnicode=true&characterEncoding=UTF-8";
	private static final String ROOT  	= "root";
	private static final String PASSWORD= "123456";
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(DRIVER);
			conn =  DriverManager.getConnection(RUL, ROOT, PASSWORD);
		} catch (ClassNotFoundException e) {
			System.out.println("");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("JDBC连接失败");
			e.printStackTrace();
		}
		return conn;
	}

	public static void closeConnection(Connection conn){
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
