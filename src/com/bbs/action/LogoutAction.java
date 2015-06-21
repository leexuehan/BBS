package com.bbs.action;
import java.util.*;

import com.bbs.beans.*;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LogoutAction extends ActionSupport implements SessionAware{
	private Map<String,Object> session;
	
	public String execute() throws Exception {
		User user = (User)session.get("user_session");
		if(user != null) {
			session.remove("user_session");
			session.clear();
			addActionError("已注销");
		}
		return INPUT;
	}
	
	public Map<String,Object> getSession() {
		return session;
	}
	
	public void setSession(Map<String,Object> session) {
		this.session = session;
	}
}
