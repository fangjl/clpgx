package com.dlh.clpgx.modules.sys.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.dlh.clpgx.freamwork.service.BaseService;

import com.dlh.clpgx.modules.sys.entity.Area;
import com.dlh.clpgx.modules.sys.repository.AreaDao;

import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.domain.BaseQuery;
@Service
@Transactional(readOnly = true)
public class  AreaService  extends  BaseService{
	@Autowired
	private AreaDao areaDao;
	/**
	 * save  等价于 SaveOrUpdate
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void save(Area area){
		areaDao.save(area);
	}
	/**
	 * 单条删除
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void delete(Area area){
		areaDao.save(area);
	}
	
	/**
	 * 根据ID删除
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id){
		areaDao.delete(id);
	}
	/**
	 * 更具ID删除
	 * @param id
	 * @return
	 */
	public Area findOne(Long id){
		return areaDao.findOne(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public Iterable<Area> findAll(){
		return areaDao.findAll();
	}
	
	/**
	 * 根据实体所有熟悉 Or Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Area> findPageByFieldsOrCriteria(BaseQuery vo){
		return areaDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	/**
	 * 根据实体所有熟悉 AND Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Area> findPageByFieldsAndCriteria(BaseQuery vo){
		return areaDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	
	/**
	 * 一下开始写自己的函数
	 */
	
	
}
