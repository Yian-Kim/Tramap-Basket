package com.project.home.admin.airline;

public class FlightClassDTO {

	private String flightClass_seq;
	private String name;
	private int isDelete;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	public String getFlightClass_seq() {
		return flightClass_seq;
	}
	public void setFlightClass_seq(String flightClass_seq) {
		this.flightClass_seq = flightClass_seq;
	}
	
	
	
}
