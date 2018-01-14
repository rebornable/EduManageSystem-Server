package com.bean;

public class StudentMark {
     private String studentid;
     private String studentname;
     private String gender;
     private String courseid;
     private String coursename;
     private int mark;
     
	public StudentMark() {
		super();
	}

	
	public StudentMark(String studentid, String studentname, String gender, String courseid, String coursename,
			int mark) {
		super();
		this.studentid = studentid;
		this.studentname = studentname;
		this.gender = gender;
		this.courseid = courseid;
		this.coursename = coursename;
		this.mark = mark;
	}


	public String getCoursename() {
		return coursename;
	}


	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}


	public String getStudentid() {
		return studentid;
	}
	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCourseid() {
		return courseid;
	}
	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}
	public int getMark() {
		return mark;
	}
	public void setMark(int mark) {
		this.mark = mark;
	}
     
}
