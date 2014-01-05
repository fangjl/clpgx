package com.dlh.clpgx.modules.sys.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.dlh.clpgx.freamwork.service.BaseService;

import com.dlh.clpgx.modules.sys.entity.Company;
import com.dlh.clpgx.modules.sys.repository.CompanyDao;

import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.domain.BaseQuery;
@Service
@Transactional(readOnly = true)
public class  CompanyService  extends  BaseService{
	@Autowired
	private CompanyDao companyDao;
	/**
	 * save  等价于 SaveOrUpdate
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void save(Company company){
		companyDao.save(company);
	}
	/**
	 * 单条删除
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void delete(Company company){
		companyDao.save(company);
	}
	
	/**
	 * 根据ID删除
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id){
		companyDao.delete(id);
	}
	/**
	 * 更具ID删除
	 * @param id
	 * @return
	 */
	public Company findOne(Long id){
		return companyDao.findOne(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public Iterable<Company> findAll(){
		return companyDao.findAll();
	}
	
	/**
	 * 根据实体所有熟悉 Or Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Company> findPageByFieldsOrCriteria(BaseQuery vo){
		return companyDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	/**
	 * 根据实体所有熟悉 AND Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Company> findPageByFieldsAndCriteria(BaseQuery vo){
		return companyDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	
	/**
	 * 一下开始写自己的函数
	 */
	
	
}
