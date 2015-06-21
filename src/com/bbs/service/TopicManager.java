package com.bbs.service;

import java.util.ArrayList;

import com.bbs.beans.Topic;

public class TopicManager {
	private static ArrayList<Topic> TopicList = null;

	public static ArrayList<Topic> getTopicList() {
		return TopicList;
	}

	public static void setTopicList(ArrayList<Topic> topicList) {
		TopicList = topicList;
	}
}
