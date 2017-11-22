package com.bean;


public class Course {
	private String course_id;
	private String name;
	private String type;
	private String teacherid;
	private String time;
	private Integer weeks;
	private Integer score;
	
	
	
	public Course() {
		super();
	}
	public Course(String course_id, String name, String type, String teacherid, String time, Integer weeks,
			Integer score) {
		super();
		this.course_id = course_id;
		this.name = name;
		this.type = type;
		this.teacherid = teacherid;
		this.time = time;
		this.weeks = weeks;
		this.score = score;
	}
	public String getCourse_id() {
		return course_id;
	}
	public void setCourse_id(String course_id) {
		this.course_id = course_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTeacherid() {
		return teacherid;
	}
	public void setTeacherid(String teacherid) {
		this.teacherid = teacherid;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Integer getWeeks() {
		return weeks;
	}
	public void setWeeks(Integer weeks) {
		this.weeks = weeks;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	
	
}
