package com.controller;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Course;
import com.service.ICourseService;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Resource
	private ICourseService iCourseService;
	@RequestMapping("/getcourseid")
	public String index(ModelMap resultMap) {
		Course course = iCourseService.findCourse("A1001");
		resultMap.addAttribute("course", course);
		System.out.println(course.getCourse_id()+"controller编号");
		return "student/studentMain";
	}
	
	@RequestMapping("/getcourse")
	public String getCourse(ModelMap resultMap) {
		List<Course> list= iCourseService.getCourse();
		resultMap.addAttribute("courseList", list);
		System.out.println(list.size()+"listsize");
		return "student/studentMain";
	}
	
}
