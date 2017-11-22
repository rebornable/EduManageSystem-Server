package com.bean;

public class Account {
	private String accountid;
	private String password;
	private int role;
	
	
	public Account() {
		super();
	}
	public Account(String accountid, String password, int role) {
		super();
		this.accountid = accountid;
		this.password = password;
		this.role = role;
	}
	public String getAccountid() {
		return accountid;
	}
	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	
	
}
