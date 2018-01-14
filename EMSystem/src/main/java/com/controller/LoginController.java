package com.controller;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Account;
import com.service.IAccountService;
@Controller
public class LoginController {
	@Resource
	private IAccountService accountService;

	@RequestMapping("/login")
	public String login(ModelMap resultMap,HttpSession session,
			String accountid,String password) {
		Account account = accountService.getAccount(accountid);
		session.setAttribute("account", account);
		resultMap.addAttribute("account", account);
		if (account.getPassword().equals(password)) {
			switch (account.getRole()) {
			case 1:
				return "admin/adminMain";
			case 2:
            	return "teacher/teacherMain";
			case 3:
            	return "student/studentMain";
			default:
				return "error2";
			}
		} else {
             return "error2";
		}
	}
}
