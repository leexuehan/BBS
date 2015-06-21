package com.bbs.service;
import java.util.*;

import com.bbs.model.*;
import com.bbs.beans.*;
public class PageManager {
	private static TreeMap<String,ArrayList<Section>> treemap;
	public static TreeMap<String,ArrayList<Section>> getMap() {
		AreaDAO adao = new AreaMySQLDAO();
		ArrayList<String> AreaNameList = adao.getNameSet();
		ArrayList<Section> SectionList = new ArrayList<Section>();		
		Iterator<String> it = AreaNameList.iterator();
		treemap = new TreeMap<String,ArrayList<Section>>();
		String AreaName =  null;
		while(it.hasNext()) {
			AreaName = it.next();
			SectionList = adao.getSectionList(AreaName);
			treemap.put(AreaName,SectionList); 
		}
		return treemap;
	}
}
