package com.bbs.beans;

public class Area {
	private String AreaName;
	private int SectionNum;//子版块数目
	private int AreaId;
	private String Administrator;
	public String getAreaName() {
		return AreaName;
	}
	
	public String getAdministrator() {
		return Administrator;
	}
	public void setAdministrator(String administrator) {
		Administrator = administrator;
	}

	public int getAreaId() {
		return AreaId;
	}

	public void setAreaId(int areaId) {
		AreaId = areaId;
	}

	public int getSectionNum() {
		return SectionNum;
	}

	public void setSectionNum(int sectionNum) {
		SectionNum = sectionNum;
	}
	
	
}
