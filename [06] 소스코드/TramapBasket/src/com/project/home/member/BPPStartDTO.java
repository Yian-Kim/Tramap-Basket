package com.project.home.member;

public class BPPStartDTO {
	private String startday; //출발일
	private String arriveday; //도착일
	private String people; //몇명이서 가는지 1명으로해야됩니다
	
	
	public String getStartday() {
		return startday;
	}
	public void setStartday(String startday) {
		this.startday = startday;
	}
	public String getArriveday() {
		return arriveday;
	}
	public void setArriveday(String arriveday) {
		this.arriveday = arriveday;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	
	
}
