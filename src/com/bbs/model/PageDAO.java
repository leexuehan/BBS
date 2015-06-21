package com.bbs.model;
import com.bbs.beans.*;
import java.util.*;
public interface PageDAO {
	public int getPageCount(Section section, int topic_page);//得到topic的页数
}
