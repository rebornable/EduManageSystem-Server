package com.service;

import java.util.List;

import com.bean.Depart;

public interface IDepartService {
	public List<Depart> getDepart();
	public Depart getDepartByID(String depart_id);
	void addDepart(Depart depart);
	String deleteDepart(String depart_id);
}
