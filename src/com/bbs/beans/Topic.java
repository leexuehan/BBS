package com.bbs.beans;

import java.util.Date;

import com.bbs.model.UserDAO;
import com.bbs.model.UserMySQLDAO;

public class Topic {
	private int TopicId;
	private String Name;
	private String Contents;
	private int ScanNum;
	private int ReplyNum;
	private String LastReplier;
	private Date LastReplyTime;
	private Date PublishTime;
	private User Publisher;
	private String SectionName;
	
	public Topic() {
		
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return Name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		Name = name;
	}
	public String getContents() {
		return Contents;
	}
	public void setContents(String contents) {
		Contents = contents;
	}
	public int getScanNum() {
		return ScanNum;
	}
	public void setScanNum(int scanNum) {
		ScanNum = scanNum;
	}
	public String getLastReplier() {
		return LastReplier;
	}
	public void setLastReplier(String lastReplier) {
		LastReplier = lastReplier;
	}
	
	public Date getPublishTime() {
		return PublishTime;
	}
	public void setPublishTime(Date publishTime) {
		PublishTime = publishTime;
	}
	public User getPublisher() {
System.out.println("In function getPublisher()");
		return Publisher;
	}
	public void setPublisher(String publisher) {
		UserDAO udao = new UserMySQLDAO();
System.out.println("the publisher is : "+publisher);
		Publisher = udao.FindUser(publisher);
	}
	public String getSectionName() {
		return SectionName;
	}
	public void setSectionName(String sectionName) {
		SectionName = sectionName;
	}
	public int getTopicId() {
		return TopicId;
	}
	public void setTopicId(int topicId) {
		TopicId = topicId;
	}
	public int getReplyNum() {
		return ReplyNum;
	}
	public void setReplyNum(int replyNum) {
		ReplyNum = replyNum;
	}
	public Date getLastReplyTime() {
		return LastReplyTime;
	}
	public void setLastReplyTime(Date lastReplyTime) {
		LastReplyTime = lastReplyTime;
	}
	
	
	
}
