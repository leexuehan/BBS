package com.bbs.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.bbs.beans.Section;

public class SectionMySQLDAO implements SectionDAO{
	public Section getSection(int SectionId) {
		Section subsection = new Section();
		Connection conn = null;
		conn = DB.getConnection();
		Statement stmt = DB.getStatement(conn);
		String sql = "select * from sectioninfo where sectionid ='" + SectionId + "'";		
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
			DB.close(rs);
			DB.close(conn);
		}
		return subsection;
	}
	
	
	public ArrayList<Section> getSectionList(String inarea){ //获取子版块的各种信息
		ArrayList<Section> SubSectionList = new ArrayList<Section>();
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
				ss.setLastPostTopic(new TopicMySQLDAO().getLastPostTopic(rs.getString("SectionName")));				
				SubSectionList.add(ss);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(stmt);
			DB.close(rs);
			DB.close(conn);
		}
		return SubSectionList;
	}
}
