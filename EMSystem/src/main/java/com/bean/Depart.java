package com.bean;

public class Depart {
    private String depart_id;
    private String name;
    private String addr;
    
	public Depart() {
		super();
	}
	public Depart(String depart_id, String name, String addr) {
		super();
		this.depart_id = depart_id;
		this.name = name;
		this.addr = addr;
	}
	public String getDepart_id() {
		return depart_id;
	}
	public void setDepart_id(String depart_id) {
		this.depart_id = depart_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
    
}
