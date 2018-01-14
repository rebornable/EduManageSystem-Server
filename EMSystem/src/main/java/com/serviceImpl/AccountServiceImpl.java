package com.serviceImpl;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.bean.Account;
import com.dao.IAccountDao;
import com.service.IAccountService;


@Service("accountService")
public class AccountServiceImpl implements IAccountService{
	@Resource
	private IAccountDao accountDao;
	
	public Account getAccount(String accountid) {
		Account acc = accountDao.getAccount(accountid);
		return acc;
	}

	@Override
	public String updatepassword(String accountid, String password, String newpassword) {
		Account acc=accountDao.getAccount(accountid);
		if(acc.getPassword().equals(password)) {
		int result=accountDao.updatepassword(accountid,newpassword);
		if(result==0) {
		return "修改密码失败！";
		}else {
		return "修改密码成功！";
		}
		}else {
		return "原密码错误！";
		}
	}

}