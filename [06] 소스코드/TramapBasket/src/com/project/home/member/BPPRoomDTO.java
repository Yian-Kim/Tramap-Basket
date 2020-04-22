package com.project.home.member;

import java.text.DecimalFormat;

public class BPPRoomDTO {
	private String hotelSchedule_seq; //방예약 번호
    
    private String hotelName; //호텔이름
    private String hotelPicture; //호텔사진
    private int price; //방 가격
    private String personCount; //방 몇인실인지
    private String roomClassName; //어떤 방인지 스위트룸? 디럭스룸?
    
    private String issuedate; //방 예약 날짜
    private int state; //방 상태(빌릴수있는지 빌릴수 없는지)
    
    public String getPriceComma(){
		
		int temp = this.price;
		DecimalFormat df = new DecimalFormat("#,###");
		//ㄴ , 찍어주는 메소드
		return df.format(temp);
	}   
    
	public String getHotelSchedule_seq() {
		return hotelSchedule_seq;
	}
	public void setHotelSchedule_seq(String hotelSchedule_seq) {
		this.hotelSchedule_seq = hotelSchedule_seq;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPersonCount() {
		return personCount;
	}
	public void setPersonCount(String personCount) {
		this.personCount = personCount;
	}
	public String getRoomClassName() {
		return roomClassName;
	}
	public void setRoomClassName(String roomClassName) {
		this.roomClassName = roomClassName;
	}
	public String getIssuedate() {
		return issuedate;
	}
	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getHotelPicture() {
		return hotelPicture;
	}
	public void setHotelPicture(String hotelPicture) {
		this.hotelPicture = hotelPicture;
	}
    
    
    
}
