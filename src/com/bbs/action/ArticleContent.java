package com.bbs.action;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ArticleContent extends ActionSupport{
	private String content;
	public String execute() {
		return SUCCESS;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
