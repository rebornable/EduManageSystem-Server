package com.dao;

import java.util.List;

import com.bean.Course;

public interface ICourseDao {
   	List<Course> getCourse();
   	Course findCourse(String name);
}
