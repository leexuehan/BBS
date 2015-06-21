package com.bbs.model;
import com.bbs.beans.*;
import java.util.*;

public interface AreaDAO {
	public ArrayList<String> getNameSet();
	public Section getSection(int SectionId);
	public ArrayList<Section> getSectionList(String AreaIn);
	public String getAdministrator();	
}
