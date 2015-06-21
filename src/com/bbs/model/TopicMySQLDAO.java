package com.bbs.model;
import com.bbs.beans.*;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

import com.bbs.beans.*;

import java.sql.*;

public class TopicMySQLDAO implements TopicDAO{
	
	private static final String GET_TOPIC = "select * from topicinfo where TopicId = ?";
	public Topic getTopic(int TopicId) {
		Topic topic = new Topic();
		Connection conn = DB.getConnection();
		PreparedStatement ps = DB.getStatement(conn,GET_TOPIC);
		ResultSet rs = null;
		try {
			ps.setInt(1, TopicId);
			rs = ps.executeQuery();
			while(rs.next()) {
				topic.setName(rs.getString("TopicName"));
				topic.setContents(rs.getString("TopicContents"));
				topic.setPublisher(rs.getString("Publisher"));
				topic.setPublishTime(rs.getDate("PublishTime"));				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DB.close(rs);
			DB.close(ps);
			DB.close(conn);
		}
		return topic;
	}
	
	private static final String GET_LAST_POST_TOPIC =
			"select * from topicinfo where sectionname = ? order by publishtime desc limit 0,1";
	public Topic getLastPostTopic(String sectionname) {
		Topic topic = new Topic();
		Connection conn = DB.getConnection();
		PreparedStatement ps = DB.getStatement(conn, GET_LAST_POST_TOPIC);		
		ResultSet rs = null;
		try {
			ps.setString(1, sectionname);
			rs = ps.executeQuery();
			while(rs.next()) {
				topic.setName(rs.getString("TopicName"));
				topic.setContents(rs.getString("TopicContents"));
				topic.setPublisher(rs.getString("Publisher"));
System.out.println("首页发表日期为： "+rs.getTimestamp("PublishTime"));
				topic.setPublishTime(rs.getTimestamp("PublishTime"));				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DB.close(rs);
			DB.close(ps);
			DB.close(conn);
		}
		return topic;
	}

	private static final String PAGE_TOPIC_LIST = 
			"select * from topicinfo where sectionname = ? order by topicid desc limit ?,?";
	public ArrayList<Topic> getTopics(Section section ,int CurrentPage, int TopicPage) {
		ArrayList<Topic> TopicList = new ArrayList<Topic>();
		int CurrentPos = (CurrentPage - 1)*TopicPage;//确定开始的位置
		Connection conn = DB.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DB.getStatement(conn, PAGE_TOPIC_LIST);
			ps.setString(1, section.getSectionName());
			ps.setInt(2, CurrentPos);
			ps.setInt(3, TopicPage);
			rs = ps.executeQuery();
			while(rs.next()) {
				Topic topic = new Topic();
				topic.setTopicId(rs.getInt("TopicId"));
				topic.setName(rs.getString("TopicName"));
				topic.setContents(rs.getString("TopicContents"));
				topic.setScanNum(rs.getInt("ScanNum"));
				topic.setLastReplier(rs.getString("LastReplier"));
				topic.setLastReplyTime(rs.getTimestamp("LastReplyTime"));
				topic.setPublishTime(rs.getTimestamp("PublishTime"));
				topic.setPublisher(rs.getString("Publisher"));
				topic.setSectionName(rs.getString("SectionName"));
				TopicList.add(topic);				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DB.close(ps);
			DB.close(rs);
			DB.close(conn);
		}		
		return TopicList;		
	}
	
	private static final String DEL_TOPICS = "delete from topicinfo where topicid = ";
	public void deleteTopics(int TopicId) {
		Connection conn = DB.getConnection();
		Statement stmt = DB.getStatement(conn);
		try {
			stmt.executeUpdate(DEL_TOPICS);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(stmt);
			DB.close(conn);
		}
	}
	
	private static final String UPDATE_TOPICS = "update topicinfo set topicname = ?, topicContents = ? "
			+ "where topic id = ?";	
	public void updateTopics(Topic topic) {
		Connection conn = DB.getConnection();
		PreparedStatement ps = DB.getStatement(conn, UPDATE_TOPICS);
		try {
			ps.setString(1, topic.getName());
			ps.setString(2, topic.getContents());
			ps.setInt(3, topic.getTopicId());
			ps.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(ps);
			DB.close(conn);
		}
	}
	
	private static final String ADD_TOPICS = "insert into topicinfo values(null,?,?,0,0,null,null,?,?,?)";
	private static final String UPDATE_SECTION = 
			"update sectioninfo set TopicCount = TopicCount+1 ,"
			+ " ArticleCount = ArticleCount+1 where sectionName = ?";
	public void postTopics(String TopicName,String TopicContents, String Publisher, String SectionName) {
		Connection conn = DB.getConnection();
		Date date = new Date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(date);
		PreparedStatement ps = DB.getStatement(conn,ADD_TOPICS);
		PreparedStatement ps_update = DB.getStatement(conn, UPDATE_SECTION);
		try {
			ps.setString(1, TopicName);
			ps.setString(2, TopicContents);
			ps.setString(3, time);
			ps.setString(4, Publisher);
			ps.setString(5, SectionName);
			ps.executeUpdate();
			
			//更新Section表中的字段
			ps_update.setString(1, SectionName);
			ps_update.execute();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(ps);
			DB.close(ps_update);
			DB.close(conn);
		}
	}
	
	private static final String UPDATE_SCAN_NUM =
			"update topicinfo set ScanNum = ScanNum + 1 where Topicid = ? ";
	public void UpdateScanNum(int topicid) {
		Connection conn = DB.getConnection();
		PreparedStatement ps = DB.getStatement(conn, UPDATE_SCAN_NUM);
		try {
			ps.setInt(1,topicid);
			ps.executeUpdate();
System.out.println("成功更新浏览次数 ");
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DB.close(ps);
			DB.close(conn);
		}
	}
	
}
