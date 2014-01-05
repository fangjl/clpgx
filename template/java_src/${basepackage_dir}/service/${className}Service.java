<#assign className = table.className>   
<#assign classNameFirstLower = className?uncap_first> 
<#assign classNameLowerCase = className?lower_case>   
package ${basepackage}.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.dlh.clpgx.freamwork.service.BaseService;

import ${basepackage}.entity.${className};
import ${basepackage}.repository.${className}Dao;

import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.domain.BaseQuery;
@Service
@Transactional(readOnly = true)
public class  ${className}Service  extends  BaseService{
	@Autowired
	private ${className}Dao ${classNameFirstLower}Dao;
	/**
	 * save  等价于 SaveOrUpdate
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void save(${className} ${classNameFirstLower}){
		${classNameFirstLower}Dao.save(${classNameFirstLower});
	}
	/**
	 * 单条删除
	 * @param m
	 */
	@Transactional(readOnly = false)
	public void delete(${className} ${classNameFirstLower}){
		${classNameFirstLower}Dao.save(${classNameFirstLower});
	}
	
	/**
	 * 根据ID删除
	 * @param id
	 */
	@Transactional(readOnly = false)
	public void delete(Long id){
		${classNameFirstLower}Dao.delete(id);
	}
	/**
	 * 更具ID删除
	 * @param id
	 * @return
	 */
	public ${className} findOne(Long id){
		return ${classNameFirstLower}Dao.findOne(id);
	}
	/**
	 * 查询所有
	 * @return
	 */
	public Iterable<${className}> findAll(){
		return ${classNameFirstLower}Dao.findAll();
	}
	
	/**
	 * 根据实体所有熟悉 Or Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<${className}> findPageByFieldsOrCriteria(BaseQuery vo){
		return ${classNameFirstLower}Dao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	/**
	 * 根据实体所有熟悉 AND Like 关联查询
	 * @param vo
	 * @return
	 */
	public Page<${className}> findPageByFieldsAndCriteria(BaseQuery vo){
		return ${classNameFirstLower}Dao.findAll(vo.buildOrSpecification(), vo.buildPageRequest());
	}
	
	/**
	 * 一下开始写自己的函数
	 */
	
	
}
