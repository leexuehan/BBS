package com.bbs.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.bbs.beans.Section;
import com.bbs.beans.Topic;
import com.bbs.beans.User;
import com.bbs.model.*;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowPageTopic extends ActionSupport{
	private ArrayList<Topic> TopicList = null;
	private User user = null;
	private Section section = null;
	private int SectionId;
	private int page = 1;
	private int PageCount;
	private static int TOPIC_PAGE = 3;

	public String ListTopic() {
		setSection(SectionId);
		setPageCount();
		setTopicList();
		return SUCCESS;
	}
	

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
System.out.println("PAGE : "+page);
		this.page = page;
	}
	
	public void setSectionId(int sectionid) {	
		this.SectionId = sectionid;
	}

	public int getSectionId() {
		return SectionId;
	}
	
	public void setSection(int sectionid) {
		SectionDAO sdao = new SectionMySQLDAO();
		section = sdao.getSection(sectionid);
	}
	
	public Section getSection() {
		return this.section;
	}
	
	public void setPageCount() {
		PageDAO pdao = new PageMySQLDAO();
		PageCount = pdao.getPageCount(section, TOPIC_PAGE);
	}
	
	public int getPageCount() {			
		return PageCount;
	}

	public ArrayList<Topic> getTopicList() {
		return TopicList;
	}

	public void setTopicList() {
		TopicDAO tdao = new TopicMySQLDAO();
		TopicList = tdao.getTopics(section, page, TOPIC_PAGE);
	}


	public User getUser() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		user = (User)session.getAttribute("user_session");
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}

}
