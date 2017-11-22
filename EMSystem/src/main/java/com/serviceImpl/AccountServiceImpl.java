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
		System.out.println(acc.getAccountid()+"name");
		return acc;
	}

}