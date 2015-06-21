package com.bbs.action;
import com.bbs.model.*;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class DoReply extends ActionSupport{
	private int Floors;
	private int TopicId;
	private String UserName;
	private String Content;
	private int SectionId;
	
	public String execute() {
		saveReply();
		return SUCCESS;
	}
	
	public void saveReply() {
		ReplyDAO rdao = new ReplyMySQLDAO();		
		rdao.saveReply(Floors, TopicId, Content, getDate(), UserName);		
	}
	
	//处理日期格式
	public String getDate() {
		Date date = new Date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(date);
		return time;
	}
	
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	
	public int getFloors() {
		return Floors;
	}
	
	public void setFloors(int floors) {
		this.Floors = floors;
	}
	public int getTopicId() {
		return TopicId;
	}

	public void setTopicId(int topicId) {
		TopicId = topicId;
	}
	
	public String getUserName() {
		return UserName;
	}
	
	public void setUserName(String username) {
		this.UserName = username;
	}

	public int getSectionId() {
		return SectionId;
	}

	public void setSectionId(int sectionId) {
		SectionId = sectionId;
	}
}
