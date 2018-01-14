package com.service;

import com.bean.Account;

public interface IAccountService {
	public Account getAccount(String accountid);
	public String updatepassword(String accountid,String password,String newpassword);
}
