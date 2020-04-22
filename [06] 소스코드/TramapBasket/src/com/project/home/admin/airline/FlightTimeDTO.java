package com.project.home.admin.airline;

public class FlightTimeDTO {

//	flightTime_seq,startTime,arrivetime,isdelete
	
	private String flightTime_seq;
	private String startTime;
	private String arriveTime;
	private int isdelete;
	
	
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getArriveTime() {
		return arriveTime;
	}
	public void setArriveTime(String arriveTime) {
		this.arriveTime = arriveTime;
	}
	public int getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(int isdelete) {
		this.isdelete = isdelete;
	}
	public String getFlightTime_seq() {
		return flightTime_seq;
	}
	public void setFlightTime_seq(String flightTime_seq) {
		this.flightTime_seq = flightTime_seq;
	}
	
	
	
	
}
