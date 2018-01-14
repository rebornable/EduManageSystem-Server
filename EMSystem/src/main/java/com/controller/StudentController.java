package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Account;
import com.bean.Course;
import com.bean.Schedule;
import com.service.IAccountService;
import com.service.ICourseService;
import com.service.IScheduleService;
import com.service.IStudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	@Resource
	private IScheduleService iScheduleService;
	@RequestMapping("/getcourseid")
	public String index(ModelMap resultMap) {
		return "student/studentMain";
	}
	
	@RequestMapping("/getschedule")
	public String getSchedule(ModelMap resultMap,String studentid) {
		List<Course> list= iScheduleService.getSchedule();
		resultMap.addAttribute("scheduleList", list);
		return "student/showSchedule";
	}
	
	@RequestMapping("/querymark")
	public String queryMark(ModelMap resultMap,String studentid){
		List<Schedule> list=iScheduleService.queryMark();
		resultMap.addAttribute("markList", list);
		return "student/showMark";
	}
	@Resource
	private ICourseService iCourseService;
	@RequestMapping("/getstu_course")
 	public String getCourse(ModelMap resultMap,HttpServletRequest request,HttpServletResponse response) {
 		List<Course> list= iCourseService.getCourse();
 		resultMap.addAttribute("courseList", list);
 		return "student/selectCourse";
 	}
	
	@RequestMapping("/selectcourse")
	public String selectCourse(ModelMap resultMap,String courseid,HttpSession session) {
		Account acc=(Account) session.getAttribute("account");
		String stuid=acc.getAccountid();
		iScheduleService.selectCourse(stuid, courseid);
		
 		
 		List<Course> clist= iScheduleService.getSchedule();
		resultMap.addAttribute("scheduleList", clist);
		return "student/showSchedule";
	}
	@Resource
	private IAccountService iAccountService;
	@RequestMapping("/update_stu_pd")
	public String update_stu_pd(ModelMap resutMap,String accountid,String password,String newpassword) {
		String msg=iAccountService.updatepassword(accountid, password, newpassword);
		resutMap.addAttribute("msg", msg);
		return "student/updatePassword";
	}
	
	@RequestMapping("/update_studentPd")
 	public String update_studentPd(ModelMap resultMap) {
 		return "student/updatePassword";
 	}
}
