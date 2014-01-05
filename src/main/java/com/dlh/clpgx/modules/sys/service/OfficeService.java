package com.dlh.clpgx.modules.sys.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.dlh.clpgx.freamwork.service.BaseService;

import com.dlh.clpgx.modules.sys.entity.Office;
import com.dlh.clpgx.modules.sys.repository.OfficeDao;

import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.domain.BaseQuery;
@Service
@Transactional(readOnly = true)
public class  OfficeService  extends  BaseService{
	@Autowired
	private OfficeDao officeDao;
	/**
	 * save  等价于 SaveOrUpdate
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void save(Office office){
		officeDao.save(office);
	}
	/**
	 * 单条删除
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void delete(Office office){
		officeDao.save(office);
	}
	
	/**
	 * 根据ID删除
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id){
		officeDao.delete(id);
	}
	/**
	 * 更具ID删除
	 * @param id
	 * @return
	 */
	public Office findOne(Long id){
		return officeDao.findOne(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public Iterable<Office> findAll(){
		return officeDao.findAll();
	}
	
	/**
	 * 根据实体所有熟悉 Or Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Office> findPageByFieldsOrCriteria(BaseQuery vo){
		return officeDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	/**
	 * 根据实体所有熟悉 AND Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Office> findPageByFieldsAndCriteria(BaseQuery vo){
		return officeDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	
	/**
	 * 一下开始写自己的函数
	 */
	
	
}
