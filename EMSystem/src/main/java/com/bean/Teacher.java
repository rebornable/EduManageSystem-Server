package com.bean;

public class Teacher {
    private String teacher_id;
    private String name;
    private String gender;
    private String birth;
    private String degree;
    private String tittle;
    private String depart;
    
	public Teacher() {
		super();
	}
	public Teacher(String teacher_id, String name, String gender, String birth, String degeree, String tittle,
			String departid) {
		super();
		this.teacher_id = teacher_id;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.degree = degeree;
		this.tittle = tittle;
		this.depart = departid;
	}
	public String getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
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
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degeree) {
		this.degree = degeree;
	}
	public String getTittle() {
		return tittle;
	}
	public void setTittle(String tittle) {
		this.tittle = tittle;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String departid) {
		this.depart = departid;
	}
    
}
