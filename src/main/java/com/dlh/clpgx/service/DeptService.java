package com.dlh.clpgx.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dlh.clpgx.entity.Dept;
import com.dlh.clpgx.repository.DeptDao;


@Service
public class DeptService {
	@Resource
	private DeptDao deptDao;
	
	@Transactional
	public void save(Dept dept){
		
		 deptDao.save(dept);
	}
	
	
	
}
