package com.bbs.beans;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Group implements Serializable{
	private int GroupNo;
	private String GroupName;
	private int SearchPermission;
	private int ReplyPermission;
	
	public Group() {
		
	}
	
	public int getSearchPermission() {
		return SearchPermission;
	}
	public void setSearchPermission(int searchPermission) {
		SearchPermission = searchPermission;
	}
	public String getGroupName() {
		return GroupName;
	}
	public void setGroupName(String groupName) {
		GroupName = groupName;
	}
	public int getGroupNo() {
		return GroupNo;
	}
	public void setGroupNo(int groupNo) {
		GroupNo = groupNo;
	}

	public int getReplyPermission() {
		return ReplyPermission;
	}

	public void setReplyPermission(int replyPermission) {
		ReplyPermission = replyPermission;
	}
	
	
}
