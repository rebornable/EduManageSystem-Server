package com.service;

import java.util.List;

import com.bean.Schedule;
import com.bean.StudentMark;
import com.bean.Teacher;

public interface ITeacherService {
	Teacher getTeacherID(String teacherid);
    List<Teacher> getTeacher();
    String deleteTeacher(String teacherid);
    void addTeacher(Teacher teacher);
    List<StudentMark> getTeaCourseStudentList(String courseid);
}
