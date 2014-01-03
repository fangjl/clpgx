package com.dlh.clpgx.modules.sys.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dlh.clpgx.freamwork.service.DcoreJpaService;
import com.dlh.clpgx.modules.sys.repository.CompanyDao;
@Service
@Transactional
public class CompanyService  extends  DcoreJpaService {
	@Autowired
	public CompanyService(CompanyDao companyDao) {
		super(companyDao);
		// TODO Auto-generated constructor stub
	}
	

}
