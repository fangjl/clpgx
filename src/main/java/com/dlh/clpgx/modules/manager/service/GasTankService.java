package com.dlh.clpgx.modules.manager.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import com.dlh.clpgx.freamwork.service.BaseService;
import com.dlh.clpgx.modules.manager.entity.GasTank;
import com.dlh.clpgx.modules.manager.repository.GasTankDao;

import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.domain.BaseQuery;
@Service
@Transactional(readOnly = true)
public class  GasTankService  extends  BaseService{
	@Autowired
	private GasTankDao gasTankDao;
	/**
	 * save  等价于 SaveOrUpdate
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void save(GasTank gasTank){
		gasTankDao.save(gasTank);
	}
	/**
	 * 单条删除
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void delete(GasTank gasTank){
		gasTankDao.save(gasTank);
	}
	
	/**
	 * 根据ID删除
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id){
		gasTankDao.delete(id);
	}
	/**
	 * 更具ID删除
	 * @param id
	 * @return
	 */
	public GasTank findOne(Long id){
		return gasTankDao.findOne(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public Iterable<GasTank> findAll(){
		return gasTankDao.findAll();
	}
	
	/**
	 * 根据实体所有熟悉 Or Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<GasTank> findPageByFieldsOrCriteria(BaseQuery vo){
		return gasTankDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	/**
	 * 根据实体所有熟悉 AND Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<GasTank> findPageByFieldsAndCriteria(BaseQuery vo){
		return gasTankDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	
	/**
	 * 一下开始写自己的函数
	 */
	
	
}
