package com.bean;

public class Schedule {
	private String courseid;
	private String studentid;
	private Integer mark;
	public Schedule(String courseid, String studentid, Integer mark) {
		super();
		this.courseid = courseid;
		this.studentid = studentid;
		this.mark = mark;
	}

	public String getCourseid() {
		return courseid;
	}
	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}
	public String getStudentid() {
		return studentid;
	}
	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}
	public Integer getMark() {
		return mark;
	}
	public void setMark(Integer mark) {
		this.mark = mark;
	}
	public Schedule() {
		super();
	}

	
}
