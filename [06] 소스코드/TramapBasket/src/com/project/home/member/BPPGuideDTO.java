package com.project.home.member;

import java.text.DecimalFormat;

public class BPPGuideDTO {
    private String guide_id;
    private String name;
    private int gender;
    private String age;
    private String picture;
    private String description;//필요없을지도 모름
    private String regdate;
    private int isDelete;
    private int totalPrice;
    private double totalGrade;
    
    private int state;//필요없을지도 방빌림상태
    private String guideschedule_seq;//필요없을지도 가이드 스케줄 번호
    
    
	public String getPriceComma(){
		
		int temp = this.totalPrice;
		DecimalFormat df = new DecimalFormat("#,###");
		//ㄴ , 찍어주는 메소드
		return df.format(temp);
	}
    
    
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public double getTotalGrade() {
		return totalGrade;
	}
	public void setTotalGrade(double totalGrade) {
		this.totalGrade = totalGrade;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getGuideschedule_seq() {
		return guideschedule_seq;
	}
	public void setGuideschedule_seq(String guideschedule_seq) {
		this.guideschedule_seq = guideschedule_seq;
	}
	public String getGuide_id() {
		return guide_id;
	}
	public void setGuide_id(String guide_id) {
		this.guide_id = guide_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
    
    
}
