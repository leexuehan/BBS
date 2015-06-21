package com.bbs.action;
import com.bbs.beans.*;
import com.bbs.model.*;

import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowArticle extends ActionSupport{
	private Topic topic;
	private int SectionId;
	private ArrayList<Reply> al = new ArrayList<Reply>();
	private int TopicId;
	private String UserName;
	private int floors;
	
	@Override
	public String execute() {
System.out.println("in execute");
		setScanNum();
		return SUCCESS;
	}
	
	public void setScanNum() { //统计帖子浏览次数
		TopicDAO tdao = new TopicMySQLDAO();
		tdao.UpdateScanNum(TopicId);
		/***************先设定成为浏览一次就增加一次浏览量，
		 * 这种方法的缺点是不能防止刷浏览量***********************/
		/*
		int n = 0;
		Map<String,Object> application = ActionContext.getContext().getApplication();
		HttpSession session = ServletActionContext.getRequest().getSession();
System.out.println(application.get("counter"));
		String count = (String)application.get("counter");
		
		if(count != null) {
			n = Integer.parseInt(count);			
		}
		
		if(session.isNew()) {
			n++;
			count = String.valueOf(n);
			application.put("counter",count);
			TopicDAO tdao = new TopicMySQLDAO();
			tdao.UpdateScanNum(TopicId);
		}*/
	}
	
	public ArrayList<Reply> getReplyList() {
		ReplyDAO rdao = new ReplyMySQLDAO();
		al =  rdao.getReplyList(TopicId);
		return al;
	}
	
	public int getFloors() {
		if(al == null) {
			floors = 1;
		} else {
			floors = al.size()+1;
		}
		return floors;
	}
	
	public Topic getTopic() {
		TopicDAO tdao = new TopicMySQLDAO();
		topic = tdao.getTopic(getTopicId());
		return topic; 
	}
	
	public void setTopicId(int TopicId) {
		this.TopicId = TopicId;
	}
	
	public int getTopicId() {
		return TopicId;
	}


	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public void setFloors(int floors) {
		this.floors = floors;
	}

	public int getSectionId() {
		return SectionId;
	}

	public void setSectionId(int sectionId) {
		SectionId = sectionId;
	}
}
