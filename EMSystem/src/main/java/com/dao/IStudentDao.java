package com.dao;

import java.util.List;

import com.bean.Student;

public interface IStudentDao {
	List<Student> getStudent();
	public Student getStudentID(String studentid);
}
