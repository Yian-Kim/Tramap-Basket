package com.project.home.admin.airline;

public class AirportDTO {
	
//	airport_seq,country_seq,name,lat,lng,isDelete
	
	private String airport_seq;
	private int country_seq;
	private String name;
	private String lat;
	private String lng;
	private int isDelete;
	
	
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
	public String getAirport_seq() {
		return airport_seq;
	}
	public void setAirport_seq(String airport_seq) {
		this.airport_seq = airport_seq;
	}
	
	
	
	
}
