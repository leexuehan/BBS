package com.bbs.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.bbs.model.*;
import com.opensymphony.xwork2.*;

@SuppressWarnings("serial")
public class CheckUser extends ActionSupport {
	
	private String username;
	public String execute() throws Exception {
		HttpServletRequest req = ServletActionContext.getRequest();
		HttpServletResponse res = ServletActionContext.getResponse();
		String username = java.net.URLDecoder.decode(req.getParameter("username"),"UTF-8");
		res.setContentType("text/html;charset=UTF-8");
		String responseStr = "";
		UserDAO udao = new UserMySQLDAO();
		if (udao.ValiUserByName(username)) {
			res.getWriter().print("exists");
		} else {
			responseStr = "你可以使用该用户名";
			res.getWriter().print(responseStr);
		}
		return null;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
