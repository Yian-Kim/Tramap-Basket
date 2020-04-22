package com.project.home.member.kds;

public class HotelTimeDTO {

	private String hotelTime_seq;
	private String hotel_seq;
	private String check_in;
	private String check_out;
	private String isDelete;

	public String getHotelTime_seq() {
		return hotelTime_seq;
	}

	public void setHotelTime_seq(String hotelTime_seq) {
		this.hotelTime_seq = hotelTime_seq;
	}

	public String getHotel_seq() {
		return hotel_seq;
	}

	public void setHotel_seq(String hotel_seq) {
		this.hotel_seq = hotel_seq;
	}

	public String getCheck_in() {
		return check_in;
	}

	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}

	public String getCheck_out() {
		return check_out;
	}

	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}

	public String getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}

}
