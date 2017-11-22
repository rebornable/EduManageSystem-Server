package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.bean.Course;
import com.dao.ICourseDao;
import com.service.ICourseService;
@Service("CourseService")
public class CourseServiceImpl implements ICourseService{
	@Resource
	private ICourseDao dao; 
	public List<Course> getCourse() {
	List<Course> list =dao.getCourse();
		return list;
	}

	public Course findCourse(String name) {
		Course course=dao.findCourse(name);
		return course;
	}

}
