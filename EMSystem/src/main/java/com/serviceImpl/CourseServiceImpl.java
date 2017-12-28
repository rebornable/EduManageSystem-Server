package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.bean.Course;
import com.dao.ICourseDao;
import com.service.ICourseService;

@Service("CourseService")
public class CourseServiceImpl implements ICourseService {
	@Resource
	private ICourseDao dao;

	@Override
	public List<Course> getCourse() {
		List<Course> list = dao.getCourse();
		return list;
	}

	@Override
	public Course findCourse(String id) {
		Course course = dao.findCourse(id);
		return course;
	}

	@Override
	public int addCourse(Course course) {
		dao.addCourse(course);
		return 1;
	}

	@Override
	public int deleteCourse(String courseid) {
		int row = dao.deleteCourse(courseid);
		if (row == 0) {
			return 0;
		} else {
			return 1;
		}
	}