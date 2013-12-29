package com.dlh.clpgx.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dlh.clpgx.freamwork.service.DcoreJpaService;
import com.dlh.clpgx.repository.CompanyDao;
@Service
public class CompanyService extends DcoreJpaService{
	@Autowired
	public CompanyService(CompanyDao companyDao) {
		super(companyDao);
		
	}
	
}
