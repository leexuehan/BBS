package com.bbs.model;
import java.sql.*;

import javax.naming.*;
import javax.sql.DataSource;


public class DB {
	private static Connection conn = null;
	public static Connection getConnection() {
		/*
		try {
			Context ctx = new InitialContext();  
            //参数jdbc/mysqlds为数据源和JNDI绑定的名字
           DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/mysqlds");
           if(ds != null) {
        	   try {
        		   conn = ds.getConnection();
        	   } catch(SQLException e) {
        		   	System.out.println(" in DB");
        	   }
           	}
		}catch (Exception e) {
				e.printStackTrace();
		}*/
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/bbs", "root", "123456");
		}catch(Exception e) {
			e.printStackTrace();
		}       
			
		return conn;
	}
	
	public static Statement getStatement(Connection conn) {
		Statement stmt = null;
		try{
			if(conn != null) {
				stmt = conn.createStatement();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return stmt;
	}
	
	public static PreparedStatement getStatement(Connection conn, String sql) {
		PreparedStatement ps = null;
		try{
			if(conn != null) {
				ps = conn.prepareStatement(sql);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return ps;
	}
	
	public static ResultSet getResultSet(Statement stmt, String sql) {
		ResultSet rs = null;
		try {
			if(stmt != null) {
				rs = stmt.executeQuery(sql);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static void close(ResultSet rs) {
		try {
			if(rs != null) {
				rs.close();
				rs = null;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			if(stmt != null) {
				stmt.close();
				stmt = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close (Connection conn) {
		try {
			if(conn != null) {
				conn.close();
				conn = null;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
