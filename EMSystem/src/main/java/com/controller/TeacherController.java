package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Account;
import com.bean.Course;
import com.bean.Schedule;
import com.bean.StudentMark;
import com.service.IAccountService;
import com.service.ICourseService;
import com.service.IScheduleService;
import com.service.ITeacherService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	@Resource
	private ICourseService iCourseService;
	@RequestMapping("/getcourse_tea")
	public String getCourseTeacher(ModelMap resultMap,HttpSession session) {
		Account acc=(Account) session.getAttribute("account");
		List<Course> list=iCourseService.getTeacherCourse(acc.getAccountid());
		resultMap.addAttribute("teaCourselist", list);
		return "teacher/showCourse";
	}
	@Resource
	private IAccountService iAccountService;
	@RequestMapping("/update_tea_pd")
	public String update_stu_pd(ModelMap resutMap,String accountid,String password,String newpassword) {
		String msg=iAccountService.updatepassword(accountid, password, newpassword);
		if(msg=="修改密码成功！") {
			resutMap.addAttribute("msg", msg);
			resutMap.addAttribute("result", true);
		}else {
			resutMap.addAttribute("result", false);
		}
		return "teacher/updatePassword";
	}
	
	@RequestMapping("/update_teacherPd")
 	public String update_studentPd(ModelMap resultMap) {
 		return "teacher/updatePassword";
 	}
	@RequestMapping("/getteachermarkcourse")
	public String getTeacherMarkCourse(ModelMap resultMap,HttpSession session) {
		Account acc=(Account) session.getAttribute("account");
		List<Course> list=iCourseService.getTeacherCourse(acc.getAccountid());
		resultMap.addAttribute("teaCourselist", list);
		return "teacher/showMarkCourse";
	}
	@Resource
	private ITeacherService iTeacherService;
	@RequestMapping("/getmarkcourse_tea")
	public String getMarkCourseTeacher(ModelMap resultMap,String courseid) {
		List<StudentMark> list=iTeacherService.getTeaCourseStudentList(courseid);
		resultMap.addAttribute("studentMarkList", list);
		resultMap.addAttribute("courseid", courseid);
		return "teacher/addMark";
	}
	
	@RequestMapping("/toAddMark")
 	public String toAddMark(ModelMap resultMap,String courseid) {
		resultMap.addAttribute("courseid",courseid);
 		return "teacher/addMark";
 	}
	@Resource
	private IScheduleService iScheduleService;
	@RequestMapping("/saveMark")
	public String saveMark(ModelMap resultMap,String studentid,String courseid,int mark){
		String message="";
		if(studentid.equals("")||studentid==null) {
			message="学号为空！";
		}else {
		    message=iScheduleService.updateMark(studentid, courseid, mark);
			resultMap.addAttribute("msg", message);
		}
		List<StudentMark> list=iTeacherService.getTeaCourseStudentList(courseid);
		resultMap.addAttribute("studentMarkList", list);
		resultMap.addAttribute("courseid", courseid);
		return "teacher/addMark";
	}
}
