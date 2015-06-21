package com.bbs.beans;

import java.io.Serializable;

@SuppressWarnings("serial")
public class User implements Serializable{
	private String UserName;
	private String PassWord;
	private String Sex;
	private String Hobby;
	private String Email;
	private String Portrait;
	private int TopicCount;
	private String Note;
	private Group group;
	
	public User() {
		
	}
	
	public String getUserName() {
		return UserName;
	}
	
	public void setUserName(String username) {
		UserName = username;
	}
	
	public String getPassWord() {
		return PassWord;
	}
	public void setPassWord(String passWord) {
		PassWord = passWord;
	}

	public String getSex() {
		return Sex;
	}

	public void setSex(String sex) {
		if(sex == "1") 
			this.Sex = "男";
		else
			this.Sex = "女";
	}

	public String getHobby() {
		return Hobby;
	}

	public void setHobby(String hobby) {
		Hobby = hobby;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPortrait() {
		return Portrait;
	}

	public void setPortrait(String portrait) {
		Portrait = portrait;
	}

	public int getTopicCount() {
		return TopicCount;
	}

	public void setTopicCount(int topicCount) {
		TopicCount = topicCount;
	}

	public String getNote() {
		return Note;
	}

	public void setNote(String note) {
		Note = note;
	}

	public Group getGroup() {
		return this.group;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

}
