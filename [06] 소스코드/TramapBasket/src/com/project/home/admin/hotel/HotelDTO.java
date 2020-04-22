package com.project.home.admin.hotel;

public class HotelDTO {
	private String hotel_seq;
	private String touristSpot_seq;
	private String name;
	private String picture;
	private String description;
	private String lat;
	private String lng;
	private String isDelete;
	
	private String touristspot_name; 
	
	
	
	
	public String getTouristspot_name() {
		return touristspot_name;
	}
	public void setTouristspot_name(String touristspot_name) {
		this.touristspot_name = touristspot_name;
	}
	public String getHotel_seq() {
		return hotel_seq;
	}
	public void setHotel_seq(String hotel_seq) {
		this.hotel_seq = hotel_seq;
	}
	public String getTouristSpot_seq() {
		return touristSpot_seq;
	}
	public void setTouristSpot_seq(String touristSpot_seq) {
		this.touristSpot_seq = touristSpot_seq;
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
	public String getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}

	
}
