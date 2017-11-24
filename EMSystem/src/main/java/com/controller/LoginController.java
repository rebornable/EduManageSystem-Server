package com.controller;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Account;
import com.service.IAccountService;
@Controller
@RequestMapping("/login")
public class LoginController {
	@Resource
	private IAccountService accountService;

	@RequestMapping()
	public String index(ModelMap resultMap,String accountid,String password) {
		System.out.println(password);
		Account account = accountService.getAccount(accountid);
		resultMap.addAttribute("account", account);
		System.out.println(account.getAccountid()+"controller"+account.getRole());
		System.out.println(account.getPassword()+"查询密码");
		if (account.getPassword().equals(password)) {
			switch (account.getRole()) {
			case 1:
				return "admin/adminMain";
			case 2:
            	return "teacher/teacherMain";
			case 3:
            	return "student/studentMain";
			default:
				return "error";
			}
		} else {
             return "error";
		}
	}
}
