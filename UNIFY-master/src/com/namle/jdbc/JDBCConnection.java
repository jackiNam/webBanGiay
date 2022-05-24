package com.namle.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCConnection {
	public static Connection getJDBCConnection() {
		String username = "root";
		String password = "";
		String url = "jdbc:mysql://localhost:3306/unify";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection(url, username, password);
			
			return connection;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args) {
		JDBCConnection jdb = new JDBCConnection();
		Connection conn = jdb.getJDBCConnection();
		if (conn == null) {
			System.out.println("Ket noi that noi that bai");
		} else {
			System.out.println("Thanh cong");
		}
	}
}
