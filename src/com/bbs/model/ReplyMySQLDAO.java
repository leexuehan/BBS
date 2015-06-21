package com.bbs.model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.bbs.beans.Reply;

import java.sql.*;

public class ReplyMySQLDAO implements ReplyDAO{
	private ArrayList<Reply> al = new ArrayList<Reply>();
	
	private static final String SELECT_REPLY  = 
			"select * from replyinfo where TopicId = ?";
	private static final String SELECT_TOPIC_NAME = 
			"select TopicName from TopicInfo where TopicId = ?";
	public ArrayList<Reply> getReplyList(int TopicId) {
		Connection conn = DB.getConnection();
		PreparedStatement ps_reply = DB.getStatement(conn, SELECT_REPLY);
		PreparedStatement ps_topic = DB.getStatement(conn, SELECT_TOPIC_NAME);
		ResultSet rs_reply = null;
		ResultSet rs_topic = null;
		try {
			ps_reply.setInt(1,TopicId);
			ps_topic.setInt(1, TopicId);
			rs_reply = ps_reply.executeQuery();
			rs_topic = ps_topic.executeQuery();
			rs_topic.next();
			
			String RootTopic = rs_topic.getString(1);
			while(rs_reply.next()) {
				Reply re = new Reply();
				re.setTopicName(RootTopic);
				re.setFloors(rs_reply.getInt("Floors"));
				re.setReContents(rs_reply.getString("ReContents"));
				re.setReTime(rs_reply.getString("ReTime"));
				re.setUser(rs_reply.getString("UserName"));
				al.add(re);
			}			
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DB.close(rs_reply);
			DB.close(rs_topic);
			DB.close(ps_reply);
			DB.close(ps_topic);
			DB.close(conn);
		}
		return al;
	}
	
	
	/***-------------保存回复的帖子------------------***/
	private static final String SAVE_REPLY = "insert into Replyinfo values(?,?,?,?,?)";
	private static final String SELECT_TOPIC = "select sectionname from topicinfo where topicid = ?";
	private static final String UPDATE_TOPIC_REPLYNUM = 
			"update topicinfo set ReplyNum = ReplyNum + 1 where topicid = ?";
	private static final String UPDATE_TOPIC_REPLYER= 
			"update topicinfo set lastreplier = ? where topicid = ?";
	private static final String UPDATE_TOPIC_REPLTIME = 
			"update topicinfo set lastreplytime = ? where topicid = ?";
	private static final String UPDATE_SECTION = 
			"update sectioninfo set ArticleCount = ArticleCount + 1 where SectionName = ?";
	public void saveReply(int floors, int topicid, String contents,String retime, String username ) {
		Connection conn = DB.getConnection();
		PreparedStatement ps = DB.getStatement(conn, SAVE_REPLY);
		PreparedStatement ps_select = DB.getStatement(conn, SELECT_TOPIC);
		String sectionname = null;
		PreparedStatement ps_update_topic_replynum = DB.getStatement(conn, UPDATE_TOPIC_REPLYNUM);
		PreparedStatement ps_update_topic_replyer= DB.getStatement(conn, UPDATE_TOPIC_REPLYER);
		PreparedStatement ps_update_topic_replytime = DB.getStatement(conn, UPDATE_TOPIC_REPLTIME);
		PreparedStatement ps_update_section = DB.getStatement(conn, UPDATE_SECTION);
		ResultSet rs = null;
		try {
			/********保存回复********/
			ps.setInt(1, floors);
			ps.setInt(2, topicid);
			ps.setString(3, contents);
			ps.setString(4, retime);
			ps.setString(5, username);
		    ps.executeUpdate();
		    
		    
		    /****************************************************
		     ******************更新Topic*************************
		     ***************************************************/
		    //更新topic的ReplyNum
		    ps_update_topic_replynum.setInt(1,topicid);
		    ps_update_topic_replynum.executeUpdate();	
		    
		    //更新Topic的LastReplyTime
		    Date date = new Date();
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String time = format.format(date);
		    ps_update_topic_replytime.setString(1, time);
		    ps_update_topic_replytime.setInt(2, topicid);
		    ps_update_topic_replytime.executeUpdate(); 
		    
		    
		    //更新Topic的LastReplier
		    ps_update_topic_replyer.setString(1, username);
		    ps_update_topic_replyer.setInt(2,topicid);
		    ps_update_topic_replyer.executeUpdate();	    
		    
		    
		    /****************************************************
		     * ********************更新 Section*******************
		     ***************************************************/
		    /********查看Section*****/
		    ps_select.setInt(1, topicid);
		    rs = ps_select.executeQuery();
		    rs.next();
		    sectionname = rs.getString(1);
		    
		    //更新Section的ArticleCount
		    ps_update_section.setString(1, sectionname);
		    ps_update_section.executeUpdate();
		    
		} catch (Exception e){
			e.printStackTrace();
		}finally {
			DB.close(rs);
			DB.close(ps);
			DB.close(ps_select);
			DB.close(ps_update_topic_replyer);
			DB.close(ps_update_topic_replytime);
			DB.close(ps_update_topic_replynum);
			DB.close(ps_update_section);
			DB.close(conn);			
		}		
	}
	
	public void deleteReply(int floors, int topicid) {
		
	}

}
