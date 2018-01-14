package com.dao;

import java.util.List;

import com.bean.Depart;

public interface IDepartDao {
	public List<Depart> getDepart();
	public Depart getDepartByID(String depart_id);
	void addDepart(Depart depart);
	int deleteDepart(String depart_id);
}
