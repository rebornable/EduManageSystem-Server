package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bean.Student;
import com.dao.IStudentDao;
import com.service.IStudentService;
@Service("studentService")
public class StudentServiceImpl implements IStudentService{
    @Resource
    private IStudentDao iStudentDao;
	@Override
	public Student getStudentID(String studentid) {
		System.out.println(studentid+"studentid--service");
		Student student=iStudentDao.getStudentID(studentid);
		return student;
	}

	@Override
	public List<Student> getStudent() {
		List<Student> list=iStudentDao.getStudent();
		System.out.println(list+"studentList--service");
		return list;
	}

}
