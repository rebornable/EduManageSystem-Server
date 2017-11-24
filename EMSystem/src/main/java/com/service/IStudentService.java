package com.service;

import java.util.List;

import com.bean.Student;

public interface IStudentService {
    Student getStudentID(String studentid);
    List<Student> getStudent();
}
