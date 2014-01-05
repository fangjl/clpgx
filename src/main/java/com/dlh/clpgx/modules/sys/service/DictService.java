package com.dlh.clpgx.modules.sys.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.dlh.clpgx.freamwork.service.BaseService;

import com.dlh.clpgx.modules.sys.entity.Dict;
import com.dlh.clpgx.modules.sys.repository.DictDao;

import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.domain.BaseQuery;
@Service
@Transactional(readOnly = true)
public class  DictService  extends  BaseService{
	@Autowired
	private DictDao dictDao;
	/**
	 * save  等价于 SaveOrUpdate
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void save(Dict dict){
		dictDao.save(dict);
	}
	/**
	 * 单条删除
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void delete(Dict dict){
		dictDao.save(dict);
	}
	
	/**
	 * 根据ID删除
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id){
		dictDao.delete(id);
	}
	/**
	 * 更具ID删除
	 * @param id
	 * @return
	 */
	public Dict findOne(Long id){
		return dictDao.findOne(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public Iterable<Dict> findAll(){
		return dictDao.findAll();
	}
	
	/**
	 * 根据实体所有熟悉 Or Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Dict> findPageByFieldsOrCriteria(BaseQuery vo){
		return dictDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	/**
	 * 根据实体所有熟悉 AND Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Dict> findPageByFieldsAndCriteria(BaseQuery vo){
		return dictDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	
	/**
	 * 一下开始写自己的函数
	 */
	
	
}
