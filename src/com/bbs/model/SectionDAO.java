package com.bbs.model;

import java.util.ArrayList;

import com.bbs.beans.Section;

public interface SectionDAO {
	public Section getSection(int SectionId);
	public ArrayList<Section> getSectionList(String AreaIn);
}
