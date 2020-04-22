package com.project.home.member;

public class BPPTouristSpotDTO {
    private String touristSpot_seq;
    private String country_seq;//참조하는 국가번호 굳이 필요없을듯?? 
    private String name;
    private String picture;
    private String description;
    private String lat;
    private String lng;
    private int isDelete;
    
    
	public String getTouristSpot_seq() {
		return touristSpot_seq;
	}
	public void setTouristSpot_seq(String touristSpot_seq) {
		this.touristSpot_seq = touristSpot_seq;
	}
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
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
    
    
}
