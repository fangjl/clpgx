package com.dlh.clpgx.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dlh.clpgx.freamwork.service.DcoreJpaService;
import com.dlh.clpgx.repository.DeptDao;


@Service
public class DeptService extends DcoreJpaService {
	@Autowired
	public DeptService(DeptDao deptDao) {
		super(deptDao);
		// TODO Auto-generated constructor stub
	}
}
