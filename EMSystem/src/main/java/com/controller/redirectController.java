package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class redirectController {
	@RequestMapping("/addCourse")
 	public String addCourse(ModelMap resultMap) {
 		return "admin/addCourse";
 	}
	@RequestMapping("/updatePwd")
 	public String updatepassword(ModelMap resultMap) {
 		return "admin/updatePassword";
 	}
	@RequestMapping("/addDepart")
 	public String addDepart(ModelMap resultMap) {
 		return "admin/addDepart";
 	}
	@RequestMapping("/addUser")
 	public String addUser(ModelMap resultMap) {
 		return "admin/addUser";
 	}

}
