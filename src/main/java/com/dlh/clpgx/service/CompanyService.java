package com.dlh.clpgx.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dlh.clpgx.entity.Company;
import com.dlh.clpgx.repository.CompanyDao;
@Service
public class CompanyService {
	private CompanyDao companyDao;
	@Autowired
	public void setCompanyDao(CompanyDao companyDao){
		this.companyDao = companyDao;
	}
	public void save(Company company){
		companyDao.save(company);
	}
	public Company get(Long id){
		return companyDao.findOne(id);
	}
}
