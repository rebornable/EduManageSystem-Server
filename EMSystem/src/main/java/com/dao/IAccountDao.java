package com.dao;

import com.bean.Account;

public interface IAccountDao {
	public Account getAccount(String accountid);
	public int updatepassword(String accountid,String password);
	void addUser(Account account);
}
