package com.service;

import java.util.List;

import com.bean.Course;
import com.bean.Schedule;

public interface IScheduleService {
	  public List<Course> getSchedule();
	  public List<Schedule> queryMark();
	  public String selectCourse(String stu_id,String course_id);
	  String updateMark(String stuid,String courseid,int mark);
}
