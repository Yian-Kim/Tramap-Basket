package com.project.home.member.ybh;

import java.text.DecimalFormat;

public class YbhTripBPPDTO {
	private String tripbpp_seq;
	private String countryName;
	private String startdate;
	private String arrivedate;
	private String paymentdate;
	private int sTicketPrice;
	private int aTicketPrice;
	private int roomPrice;
	private int guidePrice;
	
	
	public String getPriceComma(){
		
		int temp = this.sTicketPrice + this.aTicketPrice + this.roomPrice + this.guidePrice;
		DecimalFormat df = new DecimalFormat("#,###");
		//ㄴ , 찍어주는 메소드
		return df.format(temp);
	}
	
	
	public String getTripbpp_seq() {
		return tripbpp_seq;
	}
	public void setTripbpp_seq(String tripbpp_seq) {
		this.tripbpp_seq = tripbpp_seq;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getArrivedate() {
		return arrivedate;
	}
	public void setArrivedate(String arrivedate) {
		this.arrivedate = arrivedate;
	}
	public String getPaymentdate() {
		return paymentdate;
	}
	public void setPaymentdate(String paymentdate) {
		this.paymentdate = paymentdate;
	}
	public int getsTicketPrice() {
		return sTicketPrice;
	}
	public void setsTicketPrice(int sTicketPrice) {
		this.sTicketPrice = sTicketPrice;
	}
	public int getaTicketPrice() {
		return aTicketPrice;
	}
	public void setaTicketPrice(int aTicketPrice) {
		this.aTicketPrice = aTicketPrice;
	}
	public int getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}
	public int getGuidePrice() {
		return guidePrice;
	}
	public void setGuidePrice(int guidePrice) {
		this.guidePrice = guidePrice;
	}
	
	
	
}
