package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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

	
}
