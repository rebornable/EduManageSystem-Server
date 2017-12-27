package com.service;

import java.util.List;

import com.bean.Teacher;

public interface ITeacherService {
	Teacher getTeacherID(String teacherid);
    List<Teacher> getTeacher();
 
}
