package com.project.home.member.kds;

public class RoomDTO {
	private String room_seq;
	private String roomClass_seq;
	private String hotel_seq;
	private String price;
	private String personCount;
	private String isDelete;

	public String getRoom_seq() {
		return room_seq;
	}

	public void setRoom_seq(String room_seq) {
		this.room_seq = room_seq;
	}

	public String getRoomClass_seq() {
		return roomClass_seq;
	}

	public void setRoomClass_seq(String roomClass_seq) {
		this.roomClass_seq = roomClass_seq;
	}

	public String getHotel_seq() {
		return hotel_seq;
	}

	public void setHotel_seq(String hotel_seq) {
		this.hotel_seq = hotel_seq;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPersonCount() {
		return personCount;
	}

	public void setPersonCount(String personCount) {
		this.personCount = personCount;
	}

	public String getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(String isDelete) {
		this.isDelete = isDelete;
	}

}
