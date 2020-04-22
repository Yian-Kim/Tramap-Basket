package com.project.home.member.kds;

public class FreeCommentDTO {

	private String fcseq;
	private String content;
	private String regdate;
	private String pfreeSeq;
	private String id;
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	private int thread;
	private int depth;

	public String getFcseq() {
		return fcseq;
	}

	public void setFcseq(String fcseq) {
		this.fcseq = fcseq;
	}

	public int getThread() {
		return thread;
	}

	public void setThread(int thread) {
		this.thread = thread;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public String getFcSeq() {
		return fcseq;
	}

	public void setFcSeq(String fcSeq) {
		this.fcseq = fcSeq;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getPfreeSeq() {
		return pfreeSeq;
	}

	public void setPfreeSeq(String pfreeSeq) {
		this.pfreeSeq = pfreeSeq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
