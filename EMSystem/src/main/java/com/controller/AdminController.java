package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Course;
import com.bean.Student;
import com.service.ICourseService;
import com.service.IStudentService;

@Controller
@RequestMapping("/admin")
public class AdminController {
     @Resource
     private IStudentService iStudentService;
     @RequestMapping("/getStudent")
     public String getStudent(ModelMap resultMap){
    	List<Student> list=iStudentService.getStudent();
    	resultMap.addAttribute("studentList",list);
    	System.out.println(list.size()+"studentList--size--controller");
		return "admin/adminMain";
	}
    @Resource
 	private ICourseService iCourseService;
 	@RequestMapping("/getcourseid")
 	public String index(ModelMap resultMap) {
 		Course course = iCourseService.findCourse("A1001");
 		resultMap.addAttribute("course", course);
 		System.out.println(course.getCourse_id()+"controller编号");
 		return "admin/adminMain";
 	}
 	
 	@RequestMapping("/getcourse")
 	public String getCourse(ModelMap resultMap) {
 		List<Course> list= iCourseService.getCourse();
 		resultMap.addAttribute("courseList", list);
 		System.out.println(list.size()+"listsize");
 		return "admin/adminMain";
 	}
}
