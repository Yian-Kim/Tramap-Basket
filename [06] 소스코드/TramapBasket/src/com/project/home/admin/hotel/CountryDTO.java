package com.project.home.admin.hotel;

public class CountryDTO {
	private int country_seq;
	private String name;
	private String picture;
	private String description;
	private int isdelete;
	
	
	public int getCountry_seq() {
		return country_seq;
	}
	public void setCountry_seq(int country_seq) {
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
	public int getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(int isdelete) {
		this.isdelete = isdelete;
	}
}
