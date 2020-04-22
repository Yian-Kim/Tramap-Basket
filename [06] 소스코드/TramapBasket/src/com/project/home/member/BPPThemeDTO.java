package com.project.home.member;

public class BPPThemeDTO {

	private String Theme_seq;
	private String name;
	private String icon;
	private String isDelete;
	
	public String getTheme_seq() {
		return Theme_seq;
	}
	public void setTheme_seq(String theme_seq) {
		Theme_seq = theme_seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}
	
}
