package com.project.home.member;

public class BPPCountryDTO {
	private String country_seq; 
	private String name;
	private String picture;
	private String description;
	private int isDelete;
	
	
	public String getCountry_seq() {
		return country_seq;
	}
	public void setCountry_seq(String country_seq) {
		this.country_seq = country_seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	
	
}
