package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bean.Course;
import com.bean.Schedule;
import com.dao.IScheduleDao;
import com.service.IScheduleService;

@Service("scheduleService")
public class ScheduleServiceImpl implements IScheduleService{
    @Resource
    private IScheduleDao dao;
	@Override
	public List<Course> getSchedule() {
		List<Course> list=dao.getSchedule();
		System.out.println(list.size());
		return list;
	}
	
	@Override
	public List<Schedule> queryMark() {
		List<Schedule> list=dao.queryMark();
		System.out.println(list.size());
		return list;
	}
	
	@Override
	public String selectCourse(String stu_id,String Course_id) {
		dao.selectCourse(stu_id,Course_id);
		String msg="选课成功";
		System.out.println(msg);
		return msg;
	}
	
	@Override
	public String updateMark(String stuid,String courseid,int mark){
		String message="";
		if(stuid.equals("")) {
			message="学号为空！";
			return message;
		}
		int result=dao.updateMark(stuid, courseid, mark);
		if(result!=0) {
			message="修改成功！";
		}else {
			message="修改失败！";
		}
		return message;
	}
}
