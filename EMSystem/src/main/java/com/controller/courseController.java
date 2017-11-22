package com.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Course;
import com.service.ICourseService;

@Controller
@RequestMapping("/course")
public class courseController {
	@Resource
	private ICourseService iCourseService;
	@RequestMapping()
	public String index(ModelMap resultMap) {
		Course acc = iCourseService.findCourse("C语言基础");
		resultMap.addAttribute("acc", acc);
		return "index";
	}
	
}
