package com.bbs.action;
import java.util.*;

import org.apache.struts2.interceptor.SessionAware;

import com.bbs.beans.*;
import com.bbs.model.*;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport implements SessionAware{
	public String cookieuser;
	public String username;
	public String password;
	private Map<String, Object> session = new HashMap<String,Object>(); 
	private final static String USER_SESSION = "user_session";
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String execute() {		
		return SUCCESS;	
	}
	
	public void validate(){
		UserDAO udao = new UserMySQLDAO();
		User user = udao.FindUser(username, password);
		if(user != null) {
			session.put(USER_SESSION, user);				
		}else {
			this.addActionError("已注销");
		}
		
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;		
	}
	
	public Map<String, Object> getSession() {
		return session;
	}
}
