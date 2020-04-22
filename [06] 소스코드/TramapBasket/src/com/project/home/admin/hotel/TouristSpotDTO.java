package com.project.home.admin.hotel;

public class TouristSpotDTO {
	private int touristspot_seq;
	private int country_seq;
	private String name;
	private String picture;
	private String description;
	private int lat;
	private int lng;
	private int isdelete;
	public int getTouristspot_seq() {
		return touristspot_seq;
	}
	public void setTouristspot_seq(int touristspot_seq) {
		this.touristspot_seq = touristspot_seq;
	}
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
	public int getLat() {
		return lat;
	}
	public void setLat(int lat) {
		this.lat = lat;
	}
	public int getLng() {
		return lng;
	}
	public void setLng(int lng) {
		this.lng = lng;
	}
	public int getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(int isdelete) {
		this.isdelete = isdelete;
	}
	
	
	
	
}
