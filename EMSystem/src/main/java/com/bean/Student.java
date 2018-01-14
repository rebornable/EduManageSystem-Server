package com.bean;

public class Student {
	private String stu_id;
	private String name;
	private String gender;
	private String birth;
	private String grade;
	private String depart;
	
	public String getStu_id() {
		return stu_id;
	}

	public void setStudent_id(String student_id) {
		this.stu_id = student_id;
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

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	

	public Student(String stu_id, String name, String gender, String birth, String grade, String depart) {
		super();
		this.stu_id = stu_id;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.grade = grade;
		this.depart = depart;
	}

	public Student() {
		super();
	}
	
}
