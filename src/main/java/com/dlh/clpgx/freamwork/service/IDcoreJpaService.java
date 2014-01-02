package com.dlh.clpgx.freamwork.service;
import org.springframework.data.domain.Page;
import org.springside.modules.domain.BaseQuery;
import org.springside.modules.persistence.DcoreJpaRepository;
@SuppressWarnings("rawtypes")
public interface IDcoreJpaService extends  DcoreJpaRepository{
	
	/**
	 * 根据实体属性 And 关连  Like查询
	 * @param Vo
	 * @return
	 */
	public Page findPage(BaseQuery Vo);
	
	/**
	 * 根据实体属性 Ord 关连  Like查询
	 * @param Vo
	 * @return
	 */
	public Page findPageByFieldsAndCriteria(BaseQuery Vo);
	
	/**
	 * 根据实体属性 And 关连  Like查询
	 * @param Vo
	 * @return
	 */
	public Page findPageByFieldsOrCriteria(BaseQuery Vo);

}
