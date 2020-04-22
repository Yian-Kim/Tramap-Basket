package com.project.home.admin.airline;

public class FlightDTO {
	
	//(flight_seq,startAirport_seq,arriveAirport_seq,waypointAirport_seq,flightTime_seq,airline_seq,flightClass_seq,price,isDelete) 
	private int flight_seq;
	private int startAirport_seq;
	private int arriveAirport_seq;
	private int waypointAirport_seq;
	private int flightTime_seq;
	private int airline_seq;
	private int flightClass_seq;
	private int price;
	private int isDelete;
	
	public int getFlight_seq() {
		return flight_seq;
	}
	public void setFlight_seq(int flight_seq) {
		this.flight_seq = flight_seq;
	}
	public int getStartAirport_seq() {
		return startAirport_seq;
	}
	public void setStartAirport_seq(int startAirport_seq) {
		this.startAirport_seq = startAirport_seq;
	}
	public int getArriveAirport_seq() {
		return arriveAirport_seq;
	}
	public void setArriveAirport_seq(int arriveAirport_seq) {
		this.arriveAirport_seq = arriveAirport_seq;
	}
	public int getWaypointAirport_seq() {
		return waypointAirport_seq;
	}
	public void setWaypointAirport_seq(int waypointAirport_seq) {
		this.waypointAirport_seq = waypointAirport_seq;
	}
	public int getFlightTime_seq() {
		return flightTime_seq;
	}
	public void setFlightTime_seq(int flightTime_seq) {
		this.flightTime_seq = flightTime_seq;
	}
	public int getAirline_seq() {
		return airline_seq;
	}
	public void setAirline_seq(int airline_seq) {
		this.airline_seq = airline_seq;
	}
	public int getFlightClass_seq() {
		return flightClass_seq;
	}
	public void setFlightClass_seq(int flightClass_seq) {
		this.flightClass_seq = flightClass_seq;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	
	
	
	
}
