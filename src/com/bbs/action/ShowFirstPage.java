package com.bbs.action;
import com.bbs.beans.*;
import com.bbs.service.PageManager;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ShowFirstPage extends ActionSupport{
	private Map<String, ArrayList<Section>> map;
	
	public String ShowMap() { //获取版块和子版块的map
		setMap(PageManager.getMap());
		return SUCCESS;
	}

	public Map<String, ArrayList<Section>> getMap() {
		return map;
	}

	public void setMap(Map<String, ArrayList<Section>> map) {
		this.map = map;
	}	
}
