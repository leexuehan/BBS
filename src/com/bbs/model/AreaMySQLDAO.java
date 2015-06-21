package com.bbs.model;
import  com.bbs.beans.*;

import java.util.ArrayList;
import java.sql.*;

public class AreaMySQLDAO implements AreaDAO{
	
	public ArrayList<String> getNameSet(){
		ArrayList<String> SectionName = new ArrayList<String>();
		Connection conn = null;
		conn = DB.getConnection();
		Statement stmt = DB.getStatement(conn);
		String sql = "select AreaName from areainfo order by areaName";
		ResultSet rs = DB.getResultSet(stmt, sql);
		try {
			while(rs.next()) {
				SectionName.add(rs.getString(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(rs);
			DB.close(stmt);
			DB.close(conn);
		}
		return SectionName;
	}
	public Section getSection(int SectionId) {
		Section subsection = new Section();
		Connection conn = null;
		conn = DB.getConnection();
		Statement stmt = DB.getStatement(conn);
		String sql = "select * from subsectioninfo where sectionid ='" + SectionId + "'";		
		ResultSet rs = DB.getResultSet(stmt, sql);
		try {
			while(rs.next()) {
				subsection.setSectionName(rs.getString("SectionName"));
				subsection.setAdministrator(rs.getString("SectionAdministrator"));
				subsection.setTopicCount(rs.getInt("TopicCount"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(stmt);
			DB.close(conn);
		}
		return subsection;
	}
	
	
	public ArrayList<Section> getSectionList(String inarea){ //获取子版块的各种信息
		ArrayList<Section> SubSectionList = new ArrayList<Section>();
		TopicDAO tdao = new TopicMySQLDAO();
		Section ss = null;
		Connection conn = null;
		conn = DB.getConnection();
		Statement stmt = DB.getStatement(conn);
		String sql_list = "select * from sectioninfo where inarea ='" + inarea + "'";
System.out.println(sql_list);
		ResultSet rs = DB.getResultSet(stmt, sql_list);
		try {
			while(rs.next()) {				
				ss = new Section();
				ss.setSectionId(rs.getInt("SectionId"));
				ss.setSectionName(rs.getString("SectionName"));
				ss.setIntroduction(rs.getString("SectionIntroduction"));
				ss.setAdministrator(rs.getString("SectionAdministrator"));
				ss.setTopicCount(rs.getInt("TopicCount"));
				ss.setLastPostTime(rs.getString("lastPostTime"));
				ss.setArticleCount(rs.getInt("ArticleCount"));
				ss.setInArea(rs.getString("InArea"));
				ss.setLastPostTopic(tdao.getLastPostTopic((rs.getString("SectionName"))));				
				SubSectionList.add(ss);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(stmt);
			DB.close(conn);
		}
		return SubSectionList;
	}
	
	public String getAdministrator(){
		String admin = null;
		Connection conn = null;
		conn = DB.getConnection();
		Statement stmt = DB.getStatement(conn);
		String sql = "select sectionAdministrator from sectioninfo ";
		ResultSet rs = DB.getResultSet(stmt, sql);
		try {
			while(rs.next()) {
				admin = rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DB.close(stmt);
			DB.close(conn);
		}
		return admin;
	}
}
