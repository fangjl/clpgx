package com.dlh.clpgx.modules.manager.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import com.dlh.clpgx.freamwork.service.BaseService;
import com.dlh.clpgx.modules.manager.entity.FillRecords;
import com.dlh.clpgx.modules.manager.repository.FillRecordsDao;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.domain.BaseQuery;
@Service
@Transactional(readOnly = true)
public class  FillRecordsService  extends  BaseService{
	@Autowired
	private FillRecordsDao fillRecordsDao;
	/**
	 * save  等价于 SaveOrUpdate
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void save(FillRecords fillRecords){
		fillRecordsDao.save(fillRecords);
	}
	/**
	 * 单条删除
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void delete(FillRecords fillRecords){
		fillRecordsDao.save(fillRecords);
	}
	
	/**
	 * 根据ID删除
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id){
		fillRecordsDao.delete(id);
	}
	/**
	 * 更具ID删除
	 * @param id
	 * @return
	 */
	public FillRecords findOne(Long id){
		return fillRecordsDao.findOne(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public Iterable<FillRecords> findAll(){
		return fillRecordsDao.findAll();
	}
	
	/**
	 * 根据实体所有熟悉 Or Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<FillRecords> findPageByFieldsOrCriteria(BaseQuery vo){
		return fillRecordsDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	/**
	 * 根据实体所有熟悉 AND Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<FillRecords> findPageByFieldsAndCriteria(BaseQuery vo){
		return fillRecordsDao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	
	/**
	 * 一下开始写自己的函数
	 */
	
	
}
