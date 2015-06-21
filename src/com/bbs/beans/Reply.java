package com.bbs.beans;
import com.bbs.model.*;

public class Reply {
	private int floors;
	private String ReContents;
	private String ReTime;
	private User user;
	private String TopicName;
	
	public int getFloors() {
		return floors;
	}
	public void setFloors(int floors) {
		this.floors = floors;
	}
	public String getReContents() {
		return ReContents;
	}
	public void setReContents(String reContents) {
		ReContents = reContents;
	}
	public String getReTime() {
		return ReTime;
	}
	public void setReTime(String reTime) {
		ReTime = reTime;
	}
	public User getUser() {
		return user;
	}
	public void setUser(String userName) {
		UserDAO udao = new UserMySQLDAO();
		user = udao.FindUser(userName);
	}
	public String getTopicName() {
		return TopicName;
	}
	public void setTopicName(String topicName) {
		TopicName = topicName;
	}
	
}
