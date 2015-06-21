package com.bbs.model;
import  com.bbs.beans.*;

import java.sql.*;

public class UserMySQLDAO implements UserDAO{
	public void AddUser(User user) {
		Connection conn = DB.getConnection();
		String sql = "insert into UserInfo values(?,?,?,?,?,?,0,?,1)";
		PreparedStatement ps = DB.getStatement(conn, sql);		
		try {
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassWord());
			ps.setString(3, user.getSex());
			ps.setString(4, user.getHobby());
			ps.setString(5, user.getEmail());
			ps.setString(6, user.getPortrait());
			ps.setString(7, user.getNote());
			ps.executeUpdate();		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.close(ps);
			DB.close(conn);
		}
	}
	
	public boolean ValiUserByName (String username) {
	    Connection conn = DB.getConnection();
		Statement stmt = DB.getStatement(conn);
		Boolean isExist = false;
		String sql = "select * from UserInfo where UserName = '" + username + "'";
System.out.println(sql);
		ResultSet rs = DB.getResultSet(stmt, sql);
		try {
			if(rs.next())
				isExist = true;
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DB.close(rs);
		}
		return isExist;		
	}
	
	public User FindUser(String username) {
		Connection conn = DB.getConnection();
		Statement stmt = DB.getStatement(conn);
		User user = null;
		String sql = "select * from UserInfo where UserName = '" + username +"'";
System.out.println(sql);
		ResultSet rs = DB.getResultSet(stmt, sql);
		try {
			if(rs.next()) {
				user = new User();
				user.setUserName(rs.getString(1));
//System.out.println("性别是: "+rs.getInt(3));
				user.setSex(rs.getString(3));
				user.setHobby(rs.getString(4));
				user.setEmail(rs.getString(5));
				user.setPortrait(rs.getString(6));
				user.setTopicCount(rs.getInt(7));
				user.setNote(rs.getString(8));
				user.setGroup(getGroup(rs.getInt(9), stmt));
			}				
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DB.close(rs);
			DB.close(stmt);			
			DB.close(conn);
		}
		return user;		
	}
	
	public User FindUser(String username, String password) {
		Connection conn = DB.getConnection();
		Statement stmt = DB.getStatement(conn);
		User user = null;
		String sql = "select * from UserInfo where UserName = '" + username + "' and PassWord = '"+ password + "'";
System.out.println(sql);
		ResultSet rs = DB.getResultSet(stmt, sql);
		try {
			if(rs.next()) {
				user = new User();
				user.setUserName(rs.getString(1));
				user.setSex(rs.getString(3));
				user.setHobby(rs.getString(4));
				user.setEmail(rs.getString(5));
				user.setPortrait(rs.getString(6));
				user.setTopicCount(rs.getInt(7));
				user.setNote(rs.getString(8));
				user.setGroup(getGroup(rs.getInt(9), stmt));
			}				
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DB.close(rs);
			DB.close(stmt);			
			DB.close(conn);
		}
		return user;		
	}
	
	public Group getGroup(int GroupId, Statement stmt) {
		Group group = null;
		String sql = "select * from GroupInfo where GroupNo = " + GroupId;
		ResultSet rs = DB.getResultSet(stmt, sql);
		try {
			if(rs.next()) {
				group = new Group();
				group.setGroupName(rs.getString(2));
				group.setSearchPermission(rs.getInt(3));
				group.setReplyPermission(rs.getInt(4));
			}				
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DB.close(rs);
		}
		return group;
	}
	
	private static final String  DEL_USER_SQL = 
			"delete from UserInfo where username = ?";
	public void DeleteUser(String username)  {
		PreparedStatement ps = null;
		Connection conn = DB.getConnection();
		try {
			ps = conn.prepareStatement(DEL_USER_SQL);
			ps.setString(1, username);
			ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DB.close(ps);
			DB.close(conn);
		}
	}
	
	private static final String UPDATE_USER_SQL = 
			"update userinfo set username = ?, password = ?, usersex = ?, hobby = ?, portrait = ?,"
			+ " personalnote = ? where username = ?";
	public void UpdateUser(User user) {
		PreparedStatement ps = null;
		Connection conn = DB.getConnection();
		try {
			ps = DB.getStatement(conn, UPDATE_USER_SQL);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassWord());
			ps.setString(3, user.getSex());
			ps.setString(4, user.getHobby());
			ps.setString(5, user.getPortrait());
			ps.setString(5, user.getNote());
			ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DB.close(ps);
			DB.close(conn);
		}
	}
}
