package com.bean;

public class Student {
	private String student_id;
	private String name;
	private String gender;
	private String birth;
	private String begintime;
	private String depart;
	
	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getBegintime() {
		return begintime;
	}

	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	public Student(String student_id, String name, String gender, String birth, String begintime, String depart) {
		super();
		this.student_id = student_id;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.begintime = begintime;
		this.depart = depart;
	}

	public Student() {
		super();
	}
	
}
