package com.dao;

import java.util.List;

import com.bean.Course;

public interface ICourseDao {
   	List<Course> getCourse();
   	Course findCourse(String id);
   	void addCourse(Course course);
   	int deleteCourse(String id);
}
