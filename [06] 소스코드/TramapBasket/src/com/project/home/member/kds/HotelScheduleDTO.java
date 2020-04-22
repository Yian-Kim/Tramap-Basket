package com.project.home.member.kds;

public class HotelScheduleDTO {
	private String hotelSchedule_seq;
	private String room_seq;
	private String issuedate;
	private String state;

	public String getHotelSchedule_seq() {
		return hotelSchedule_seq;
	}

	public void setHotelSchedule_seq(String hotelSchedule_seq) {
		this.hotelSchedule_seq = hotelSchedule_seq;
	}

	public String getRoom_seq() {
		return room_seq;
	}

	public void setRoom_seq(String room_seq) {
		this.room_seq = room_seq;
	}

	public String getIssuedate() {
		return issuedate;
	}

	public void setIssuedate(String issuedate) {
		this.issuedate = issuedate;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

}
