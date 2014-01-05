package com.dlh.clpgx.modules.sys.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.dlh.clpgx.freamwork.service.BaseService;
import com.dlh.clpgx.modules.sys.entity.Module;
import com.dlh.clpgx.modules.sys.repository.ModuleDao;

import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.domain.BaseQuery;
@Service
@Transactional(readOnly = true)
public class ModuleService  extends  BaseService{
	@Autowired
	private ModuleDao moduleDao;
	/**
	 * save  等价于 SaveOrUpdate
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void save(Module m){
		moduleDao.save(m);
	}
	/**
	 * 单条删除
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void delete(Module m){
		moduleDao.save(m);
	}
	/**
	 * 根据ID删除
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id){
		moduleDao.delete(id);
	}
	/**
	 * 更具ID查找
	 * @param id
	 * @return
	 */
	public Module findOne(Long id){
		return moduleDao.findOne(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public Iterable<Module> findAll(){
		return moduleDao.findAll();
	}
	
	/**
	 * 根据实体所有熟悉 Or Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Module> findPageByFieldsOrCriteria(BaseQuery vo){
		return moduleDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	/**
	 * 根据实体所有熟悉 AND Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Module> findPageByFieldsAndCriteria(BaseQuery vo){
		return moduleDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	
	
	/**
	 * 一下开始写自己的函数
	 */
	
	public List<Module>  findTreeList(Long parentid){
		return moduleDao.findTreeList(parentid);
	}
	
	
	
	
}
