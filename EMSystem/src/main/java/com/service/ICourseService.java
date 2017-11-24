package com.service;

import java.util.List;

import com.bean.Course;

public interface ICourseService {
	public List<Course> getCourse();
	Course findCourse(String id);
}
