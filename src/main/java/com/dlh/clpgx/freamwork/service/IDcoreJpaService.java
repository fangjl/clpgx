package com.dlh.clpgx.freamwork.service;
import org.springframework.data.domain.Page;
import org.springside.modules.domain.BaseQuery;
import org.springside.modules.persistence.DcoreJpaRepository;
public interface IDcoreJpaService extends  DcoreJpaRepository{
	public Page findPage(BaseQuery Vo);
	
}
