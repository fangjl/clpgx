package com.dlh.clpgx.modules.sys.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.dlh.clpgx.freamwork.service.BaseService;
import com.dlh.clpgx.modules.sys.entity.Menu;
import com.dlh.clpgx.modules.sys.repository.MenuDao;

import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.domain.BaseQuery;
@Service
@Transactional(readOnly = true)
public class  MenuService  extends  BaseService{
	@Autowired
	private MenuDao menuDao;
	/**
	 * save  等价于 SaveOrUpdate
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void save(Menu menu){
		menuDao.save(menu);
	}
	/**
	 * 单条删除
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void delete(Menu menu){
		menuDao.save(menu);
	}
	
	/**
	 * 根据ID删除
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id){
		menuDao.delete(id);
	}
	/**
	 * 更具ID删除
	 * @param id
	 * @return
	 */
	public Menu findOne(Long id){
		return menuDao.findOne(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public Iterable<Menu> findAll(){
		return menuDao.findAll();
	}
	
	/**
	 * 根据实体所有熟悉 Or Like 关联查询
	 * @param vo
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Page<Menu> findPageByFieldsOrCriteria(BaseQuery vo){
		return menuDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	/**
	 * 根据实体所有熟悉 AND Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<Menu> findPageByFieldsAndCriteria(BaseQuery vo){
		return menuDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	
	/**
	 * 一下开始写自己的函数
	 */
	
	
}
