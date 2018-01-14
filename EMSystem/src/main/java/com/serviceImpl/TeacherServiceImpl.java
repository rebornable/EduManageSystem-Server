package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bean.Schedule;
import com.bean.StudentMark;
import com.bean.Teacher;
import com.dao.ITeacherDao;
import com.service.ITeacherService;
@Service("teacherService")
public class TeacherServiceImpl implements ITeacherService{
    @Resource
    private ITeacherDao iTeacherDao;
	@Override
	public Teacher getTeacherID(String teacherid) {
		Teacher teacher=iTeacherDao.getTeacherID(teacherid);
		return teacher;
	}

	@Override
	public List<Teacher> getTeacher() {
		List<Teacher> list=iTeacherDao.getTeacher();
		return list;
	}

	@Override
	public String deleteTeacher(String teacherid) {
		String message="";
		int result=iTeacherDao.deleteTeacher(teacherid);
		if (result==0) {
			message="删除失败！";
		}else {
			message="删除成功！";
		}
		return message;
	}

	@Override
	public void addTeacher(Teacher teacher) {
		iTeacherDao.addTeacher(teacher);
	}

	@Override
	public List<StudentMark> getTeaCourseStudentList(String courseid) {
		List<StudentMark> list=iTeacherDao.getTeaCourseStudentList(courseid);
		return list;
	}

}
