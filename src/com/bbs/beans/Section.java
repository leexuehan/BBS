package com.bbs.beans;

import java.io.Serializable;


@SuppressWarnings("serial")
public class Section implements Serializable{
	private int SectionId;
	private String SectionName;
	private String Introduction;
	private String Administrator;
	private int TopicCount;
	private Topic LastPostTopic;
	private String LastPostTime;
	private int ArticleCount;
	private String InArea;
	public Section() {
		
	}
	public int getSectionId() {
		return SectionId;
	}
	public void setSectionId(int sectionId) {
		SectionId = sectionId;
	}
	public String getSectionName() {
		return SectionName;
	}
	public void setSectionName(String sectionName) {
		SectionName = sectionName;
	}
	public String getIntroduction() {
		return Introduction;
	}
	public void setIntroduction(String introduction) {
		Introduction = introduction;
	}
	public String getAdministrator() {
		return Administrator;
	}
	public void setAdministrator(String administrator) {
		Administrator = administrator;
	}
	public int getTopicCount() {
		return TopicCount;
	}
	public void setTopicCount(int topicCount) {
		TopicCount = topicCount;
	}
	public Topic getLastPostTopic() {
		return LastPostTopic;
	}
	public void setLastPostTopic(Topic lastPostTopic) {
		LastPostTopic = lastPostTopic;
	}
	public String getLastPostTime() {
		return LastPostTime;
	}
	public void setLastPostTime(String lastPostTime) {
		LastPostTime = lastPostTime;
	}
	public int getArticleCount() {
		return ArticleCount;
	}
	public void setArticleCount(int articleCount) {
		ArticleCount = articleCount;
	}
	public String getInArea() {
		return InArea;
	}
	public void setInArea(String inArea) {
		InArea = inArea;
	}
	
}
