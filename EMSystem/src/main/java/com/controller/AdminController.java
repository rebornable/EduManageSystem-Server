package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Course;
import com.bean.Depart;
import com.bean.Student;
import com.bean.Teacher;
import com.service.IAccountService;
import com.service.ICourseService;
import com.service.IDepartService;
import com.service.IStudentService;
import com.service.ITeacherService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	 @Resource
	 private ITeacherService iTeacherService;
	 @RequestMapping("/getteacher")
     public String getTeacher(ModelMap resultMap){
    	List<Teacher> list=iTeacherService.getTeacher();
    	resultMap.addAttribute("teacherList",list);
		return "admin/showTeacher";
	}
	 @RequestMapping("/deleteteacher")
     public String deleteTeacher(ModelMap resultMap,String teacherid){
    	String message=iTeacherService.deleteTeacher(teacherid);
    	resultMap.addAttribute("message",message);
    	List<Teacher> list=iTeacherService.getTeacher();
    	resultMap.addAttribute("teacherList",list);
		return "admin/showTeacher";
	}
	 @RequestMapping("/addteacher")
	 public String addTeacher(ModelMap resultMap,Teacher teacher){
	    	iTeacherService.addTeacher(teacher);
	    	List<Teacher> list=iTeacherService.getTeacher();
	    	resultMap.addAttribute("teacherList",list);
			return "admin/showTeacher";
		}
     @Resource
     private IStudentService iStudentService;
     @RequestMapping("/getstudent")
     public String getStudent(ModelMap resultMap){
    	List<Student> list=iStudentService.getStudent();
    	resultMap.addAttribute("studentList",list);
		return "admin/showStudent";
	}
     @RequestMapping("/deletestudent")
     public String deleteStudent(ModelMap resultMap,String studentid){
    	String message=iStudentService.deleteStudent(studentid);
    	resultMap.addAttribute("message",message);
    	List<Student> list=iStudentService.getStudent();
    	resultMap.addAttribute("studentList",list);
		return "admin/showStudent";
	}
     @RequestMapping("/addstudent")
	 public String addStudent(ModelMap resultMap,Student student){
	    	iStudentService.addStudent(student);
	    	List<Student> list=iStudentService.getStudent();
	    	resultMap.addAttribute("studentList",list);
			return "admin/showStudent";
		}
    @Resource
 	private ICourseService iCourseService;
 	@RequestMapping("/getcourseid")
 	public String index(ModelMap resultMap) {
 		Course course = iCourseService.findCourse("A1001");
 		resultMap.addAttribute("course", course);
 		return "admin/adminMain";
 	}
 	
 	@RequestMapping("/getcourse")
 	public String getCourse(ModelMap resultMap,HttpServletRequest request,HttpServletResponse response) {
 		List<Course> list= iCourseService.getCourse();
 		resultMap.addAttribute("courseList", list);
 		System.out.println(list.size()+"listsize");
 		return "admin/showCourse";
 	}
 	
 	@RequestMapping("/addcourse")
 	public String addCourse(ModelMap resultMap,Course course) {
        iCourseService.addCourse(course);
        List<Course> list= iCourseService.getCourse();
 		resultMap.addAttribute("courseList", list);
 		return "admin/showCourse";
 	}
 	@RequestMapping("/deletecourse")
 	public String deleteCourse(ModelMap resultMap,String courseid) {
 		String message="";
        int result=iCourseService.deleteCourse(courseid);
        if(result==0) {
        	message="删除失败!";
        }else {
        	message="删除成功!";
        }
        resultMap.addAttribute("message", message);
        List<Course> list= iCourseService.getCourse();
 		resultMap.addAttribute("courseList", list);
 		return "admin/showCourse";
 	}
 	@Resource
 	private IAccountService accountService;
	@RequestMapping("/updatepassword")
	public String updatepassword(ModelMap resultMap,String accountid,String password,String newpassword) {
		String message=accountService.updatepassword(accountid, password, newpassword);
		resultMap.addAttribute("message", message);
		return "admin/updatePassword";
	}
	@Resource
	private IDepartService departService;
	@RequestMapping("/getdepart")
	public String getDepart(ModelMap resultMap) {
		List<Depart> list = departService.getDepart();
		resultMap.addAttribute("departList", list);
		return "admin/showDepart";
	}
	
	@RequestMapping("/adddepart")
	public String addDepart(ModelMap resultMap,Depart depart) {
		System.out.println(depart.getName());
		departService.addDepart(depart);
		List<Depart> list = departService.getDepart();
		resultMap.addAttribute("departList", list);
		return "admin/showDepart";
	}
	
	@RequestMapping("/deletedepart")
	public String deleteDepart(ModelMap resultMap,String depart_id) {
		String message=departService.deleteDepart(depart_id);
		resultMap.addAttribute("message", message);
		List<Depart> list = departService.getDepart();
		resultMap.addAttribute("departList", list);
		return "admin/showDepart";
	}
}
