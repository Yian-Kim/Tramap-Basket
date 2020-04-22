package com.project.home.admin.airline;

public class AirlineDTO {
	
//	name,picture,isDelete
	private String airline_seq;
	private String name;
	private String picture;
	private String isDelete;
	
	
	
	
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

	public String getAirline_seq() {
		return airline_seq;
	}
	public void setAirline_seq(String airline_seq) {
		this.airline_seq = airline_seq;
	}
	public String getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}
	
	
	
	
	
	
}
