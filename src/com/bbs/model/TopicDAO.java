package com.bbs.model;
import com.bbs.beans.*;

import java.util.*;
public interface TopicDAO {
	public Topic getTopic(int topicid);
	public Topic getLastPostTopic(String sectionname);
	//public Topic getLastPostReply(int );
	public void UpdateScanNum(int topicid);
	public ArrayList<Topic> getTopics(Section section,int CurrentPage, int Topic_Page);
	public void postTopics(String TopicName,String TopicContents, String Publisher, String SectionName);
	public void deleteTopics(int TopicId);
	public void updateTopics(Topic topic);
	//搜索帖子的功能暂留
}
