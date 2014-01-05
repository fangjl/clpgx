package com.dlh.clpgx.modules.sys.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.dlh.clpgx.freamwork.service.BaseService;

import com.dlh.clpgx.modules.sys.entity.Log;
import com.dlh.clpgx.modules.sys.repository.LogDao;

import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.domain.BaseQuery;
@Service
@Transactional(readOnly = true)
public class  LogService  extends  BaseService{
	@Autowired
	private LogDao logDao;
	/**
	 * save  等价于 SaveOrUpdate
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void save(Log log){
		logDao.save(log);
	}
	/**
	 * 单条删除
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void delete(Log log){
		logDao.save(log);
	}
	
	/**
	 * 根据ID删除
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id){
		logDao.delete(id);
	}
	/**
	 * 更具ID删除
	 * @param id
	 * @return
	 */
	public Log findOne(Long id){
		return logDao.findOne(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public Iterable<Log> findAll(){
		return logDao.findAll();
	}
	
	/**
	 * 根据实体所有熟悉 Or Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Log> findPageByFieldsOrCriteria(BaseQuery vo){
		return logDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	/**
	 * 根据实体所有熟悉 AND Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Log> findPageByFieldsAndCriteria(BaseQuery vo){
		return logDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	
	/**
	 * 一下开始写自己的函数
	 */
	
	
}
