package com.project.home.member.ybh;

public class YbhGuideReviewDTO {
	
	private String guidereview_seq;
	private String tripbppscheduleguide_seq;
	
	private String title;
	private String content;
	private int grade;
	private String member_id;
	
	private String regdate;
	
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getGuidereview_seq() {
		return guidereview_seq;
	}
	public void setGuidereview_seq(String guidereview_seq) {
		this.guidereview_seq = guidereview_seq;
	}
	public String getTripbppscheduleguide_seq() {
		return tripbppscheduleguide_seq;
	}
	public void setTripbppscheduleguide_seq(String tripbppscheduleguide_seq) {
		this.tripbppscheduleguide_seq = tripbppscheduleguide_seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
    
	
    

    
}
