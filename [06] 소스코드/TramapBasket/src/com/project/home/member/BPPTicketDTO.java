package com.project.home.member;

import java.text.DecimalFormat;

public class BPPTicketDTO {
    private String ticket_seq; //티켓번호
    private String issuedate; //티켓의 날짜
    private int quantity; //표 몇개 남았는지 0이면 품절떠야되서
    
    private String startAirportName; //출발공항이름
    private String arriveAirportName; //도착공항이름
    private String waypointAirportName; //경유공항이름 없으면 안넣으면됨!!
    
    private int price; //가격
    private String airlineName; //항공사이름
    private String flightClassName; //좌석등급이름
    
    private String startTime; //출발시간
    private String arriveTime; //도착시간
    
    public String getPriceComma(){
		
		int temp = this.price;
		DecimalFormat df = new DecimalFormat("#,###");
		//ㄴ , 찍어주는 메소드
		return df.format(temp);
	}    
    
    
	public String getTicket_seq() {
		return ticket_seq;
	}
	public void setTicket_seq(String ticket_seq) {
		this.ticket_seq = ticket_seq;
	}
	public String getIssuedate() {
		return issuedate;
	}
	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getStartAirportName() {
		return startAirportName;
	}
	public void setStartAirportName(String startAirportName) {
		this.startAirportName = startAirportName;
	}
	public String getArriveAirportName() {
		return arriveAirportName;
	}
	public void setArriveAirportName(String arriveAirportName) {
		this.arriveAirportName = arriveAirportName;
	}
	public String getWaypointAirportName() {
		return waypointAirportName;
	}
	public void setWaypointAirportName(String waypointAirportName) {
		this.waypointAirportName = waypointAirportName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getAirlineName() {
		return airlineName;
	}
	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}
	public String getFlightClassName() {
		return flightClassName;
	}
	public void setFlightClassName(String flightClassName) {
		this.flightClassName = flightClassName;
	}
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
    
    
    
}
