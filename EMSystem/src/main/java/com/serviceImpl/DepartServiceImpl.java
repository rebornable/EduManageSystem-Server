package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bean.Depart;
import com.dao.IDepartDao;
import com.service.IDepartService;
@Service("departService")
public class DepartServiceImpl implements IDepartService{
    @Resource
    private IDepartDao departDao;
	@Override
	public List<Depart> getDepart() {
		List<Depart> list=departDao.getDepart();
		return list;
	}

	@Override
	public Depart getDepartByID(String depart_id) {
		return null;
	}

	@Override
	public void addDepart(Depart depart) {
		System.out.println(depart.getName().toString());
		departDao.addDepart(depart);
	}

	@Override
	public String deleteDepart(String depart_id) {
		String message="";
		int row=departDao.deleteDepart(depart_id);
		 if(row == 0) {
	        	return message="删除失败!";
	        }else {
	        	return message="删除成功!";
	        }
	}

}
