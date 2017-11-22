package com.controller;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Account;
import com.service.IAccountService;
@Controller
@RequestMapping("/index")
public class indexController {
	@Resource
	private IAccountService accountService;

	@RequestMapping()
	public String index(ModelMap resultMap) {
		Account acc = accountService.getAccount("admin");
		resultMap.addAttribute("acc", acc);
		return "studentMain";
	}
}
