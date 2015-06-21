package com.bbs.model;

import java.util.ArrayList;

import com.bbs.beans.Reply;

public interface ReplyDAO {
	public ArrayList<Reply> getReplyList(int TopicId);
	public void saveReply(int floors, int topicid, String contents,String retime, String username);
	public void deleteReply(int floors, int topicid);
}
