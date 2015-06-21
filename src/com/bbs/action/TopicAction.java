package com.bbs.action;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.bbs.model.*;
import com.bbs.beans.*;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class TopicAction extends ActionSupport implements ModelDriven<Topic>{
	private static final long serialVersionUID = 7728402544120928252L;
	private String username;
	private Section section;
	private Topic topic;
	private int SectionId;
	
	@Override
	public Topic getModel() {
		if(topic == null) {
			topic = new Topic();
		}
		return topic;
	}
	
	public String execute() {
		setUsername();
		return SUCCESS;
	}
	
	public String Post() {
		TopicDAO tdao = new TopicMySQLDAO();
		setSection(SectionId);
		setUsername();
System.out.println("the name of topic: "+topic.getName());
		tdao.postTopics(topic.getName(), topic.getContents(), username, section.getSectionName());
		return "post_success";
	}
	
	public String Edit() {
		return SUCCESS;
	}
	
	public String Delete() {
		return SUCCESS;
	}
	
	public void setSection(int SectionId) {
		SectionDAO sdao = new SectionMySQLDAO();
		section = sdao.getSection(SectionId);
	}
	
	public int getSectionId() {
		return SectionId;
	}

	public void setSectionId(int sectionId) {
		SectionId = sectionId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User) session.getAttribute("user_session");
		this.username = user.getUserName();
	}	
}
