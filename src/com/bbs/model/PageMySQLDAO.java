package com.bbs.model;
import com.bbs.beans.*;

public class PageMySQLDAO implements PageDAO{	
	public int getPageCount(Section section, int topic_page){
		int TopicCount = section.getTopicCount();
		int PageCount = TopicCount % topic_page == 0 ? 
				TopicCount/topic_page :(TopicCount/topic_page + 1);
		return PageCount;
	}
}
