package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bean.Student;
import com.dao.IAccountDao;
import com.dao.IStudentDao;
import com.service.IStudentService;
@Service("studentService")
public class StudentServiceImpl implements IStudentService{
    @Resource
    private IStudentDao iStudentDao;
	@Override
	public Student getStudentID(String studentid) {
		Student student=iStudentDao.getStudentID(studentid);
		return student;
	}

	@Override
	public List<Student> getStudent() {
		List<Student> list=iStudentDao.getStudent();
		return list;
	}

	@Override
	public String deleteStudent(String studentid) {
		String message="";
		int result=iStudentDao.deleteStudent(studentid);
		if (result==0) {
			message="删除失败！";
		}else {
			message="删除成功！";
		}
		return message;
	}
	@Resource
    private IAccountDao iAccountDao;
	@Override
	public void addStudent(Student student) {
		iStudentDao.addStudent(student);
	}

}
