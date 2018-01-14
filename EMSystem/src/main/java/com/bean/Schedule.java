package com.bean;

public class Schedule {
	private Course course;
	private Student student;
	private Integer mark;
	
	
	public Schedule() {
		super();
	}
	public Schedule(Course course, Student student, Integer mark) {
		super();
		this.course = course;
		this.student = student;
		this.mark = mark;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Integer getMark() {
		return mark;
	}
	public void setMark(Integer mark) {
		this.mark = mark;
	}
	
	
}
