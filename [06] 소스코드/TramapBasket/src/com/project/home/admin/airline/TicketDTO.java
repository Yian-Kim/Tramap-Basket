package com.project.home.admin.airline;

public class TicketDTO {
	
//	ticket_seq,issuedate,quantity,flight_seq
	private String ticket_seq;
	private String issuedate;
	private String quantity;
	private int flight_seq;
	
	
	public String getIssuedate() {
		return issuedate;
	}
	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}
	public int getFlight_seq() {
		return flight_seq;
	}
	public void setFlight_seq(int flight_seq) {
		this.flight_seq = flight_seq;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getTicket_seq() {
		return ticket_seq;
	}
	public void setTicket_seq(String ticket_seq) {
		this.ticket_seq = ticket_seq;
	}
	
	
	
	
}
