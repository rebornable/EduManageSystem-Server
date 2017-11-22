package com.bean;

import java.util.Date;

public class Student {
	private String student_id;
	private String student_name;
	private String student_gender;
	private Date student_birth;
	private Date student_begintime;
	private String student_depart;
	public String getStudent_id() {
		return student_id;
	}
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public String getStudent_gender() {
		return student_gender;
	}
	public void setStudent_gender(String student_gender) {
		this.student_gender = student_gender;
	}
	public Date getStudent_birth() {
		return student_birth;
	}
	public void setStudent_birth(Date student_birth) {
		this.student_birth = student_birth;
	}
	public Date getStudent_begintime() {
		return student_begintime;
	}
	public void setStudent_begintime(Date student_begintime) {
		this.student_begintime = student_begintime;
	}
	public String getStudent_depart() {
		return student_depart;
	}
	public void setStudent_depart(String student_depart) {
		this.student_depart = student_depart;
	}
	public Student(String student_id, String student_name, String student_gender, Date student_birth,
			Date student_begintime, String student_depart) {
		super();
		this.student_id = student_id;
		this.student_name = student_name;
		this.student_gender = student_gender;
		this.student_birth = student_birth;
		this.student_begintime = student_begintime;
		this.student_depart = student_depart;
	}
	public Student() {
		super();
	}
	
}
