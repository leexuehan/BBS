package com.bbs.action;
import com.bbs.model.*;
import com.bbs.beans.*;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AddUserAction extends ActionSupport{
	private String username;
	private String password;
	private String passwordconfirm;
	private String sex;
	private String hobby;
	private String email;
	private String portrait;
	private String note;
	private int TopicCount;

	public String execute() {
		UserDAO auda = new UserMySQLDAO();
		User user = new User();
		user.setUserName(username);
		user.setPassWord(password);
		user.setNote(note);
		user.setEmail(email);
		user.setSex(sex);
		user.setHobby(hobby);
		user.setPortrait(portrait);
		try {
			auda.AddUser(user);
			return SUCCESS;
		}catch(Exception e) {
			e.printStackTrace();			
		}		
		return INPUT;		
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPortrait() {
		return portrait;
	}

	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public int getTopicCount() {
		return TopicCount;
	}

	public void setTopicCount(int topicCount) {
		TopicCount = topicCount;
	}

	public String getPasswordconfirm() {
		return passwordconfirm;
	}

	public void setPasswordconfirm(String passwordconfirm) {
		this.passwordconfirm = passwordconfirm;
	}

	
	
}
