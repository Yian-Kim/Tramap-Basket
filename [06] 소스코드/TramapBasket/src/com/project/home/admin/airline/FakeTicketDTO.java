package com.project.home.admin.airline;

public class FakeTicketDTO {
	
//	create table tblfaketicket (
//		    seq number primary key,
//		    airline_name varchar2(60) not null,
//		    starttime varchar2(5) not null,
//		    arrivetime varchar2(5) not null,
//		    classlv varchar2 (10) not null,
//		    startairport varchar2 (30) not null,
//		    arriveairport varchar2 (30) not null,
//		    price varchar2(10) not null,
//		    isdelete NUMBER(1) NOT NULL CHECK(isDelete in (0,1))
//		);

	private String faketicket_seq;
	private String airline_name;
	private String issuedate;
	private String start_time;
	private String arrive_time;
	private String class_lv;
	private String start_airport;
	private String arrive_airport;
	private String price;
	private int isdelete;
	
	
	public String getSeq() {
		return faketicket_seq;
	}
	public void setSeq(String seq) {
		this.faketicket_seq = seq;
	}
	public String getAirline_name() {
		return airline_name;
	}
	public void setAirline_name(String airline_name) {
		this.airline_name = airline_name;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getArrive_time() {
		return arrive_time;
	}
	public void setArrive_time(String arrive_time) {
		this.arrive_time = arrive_time;
	}
	public String getClass_lv() {
		return class_lv;
	}
	public void setClass_lv(String class_lv) {
		this.class_lv = class_lv;
	}
	public String getStart_airport() {
		return start_airport;
	}
	public void setStart_airport(String start_airport) {
		this.start_airport = start_airport;
	}
	public String getArrive_airport() {
		return arrive_airport;
	}
	public void setArrive_airport(String arrive_airport) {
		this.arrive_airport = arrive_airport;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getIsdelete() {
		return isdelete;
	}
	public void setIsdelete(int isdelete) {
		this.isdelete = isdelete;
	}
	public String getIssuedate() {
		return issuedate;
	}
	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}
	
	
	
	
	
	
}
