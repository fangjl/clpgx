package com.dlh.clpgx.freamwork.service;
import java.io.Serializable;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springside.modules.domain.BaseQuery;
import org.springside.modules.persistence.DcoreJpaRepository;
@Service
@SuppressWarnings("rawtypes")
public class DcoreJpaService  implements IDcoreJpaService {
	private DcoreJpaRepository<Object, Serializable> dcoreJpaRepository;
	@SuppressWarnings("unchecked")
	public DcoreJpaService(DcoreJpaRepository dcoreJpaRepository){
		this.dcoreJpaRepository = dcoreJpaRepository;
	} 
	
	@Override
	public List findAll() {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.findAll();
	}
	@Override
	public List findAll(Sort sort) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.findAll(sort);
	}
	@Override
	public List findAll(Iterable ids) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.findAll(ids);
	}
	@Override
	public List save(Iterable entities) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.save(entities);
	}
	@Override
	public void flush() {
		// TODO Auto-generated method stub
		dcoreJpaRepository.flush();
	}
	@Override
	public Object saveAndFlush(Object entity) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.saveAndFlush(entity);
	}
	@Override
	public void deleteInBatch(Iterable entities) {
		// TODO Auto-generated method stub
		dcoreJpaRepository.delete(entities);
	}
	@Override
	public void deleteAllInBatch() {
		// TODO Auto-generated method stub
		dcoreJpaRepository.deleteAllInBatch();
	}

	@Override
	public Page findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.findAll(pageable);
	}
	@Override
	public Object save(Object entity) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.save(entity);
	}
	@Override
	public Object findOne(Serializable id) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.findOne(id);
	}
	@Override
	public boolean exists(Serializable id) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.exists(id);
	}
	@Override
	public long count() {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.count();
	}
	@Override
	public void delete(Serializable id) {
		// TODO Auto-generated method stub
		dcoreJpaRepository.delete(id);
	}
	@Override
	public void delete(Object entity) {
		// TODO Auto-generated method stub
		dcoreJpaRepository.delete(entity);
	}
	@Override
	public void delete(Iterable entities) {
		// TODO Auto-generated method stub
		dcoreJpaRepository.deleteInBatch(entities);
	}
	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		dcoreJpaRepository.deleteAll();
	}
	@Override
	public Object findOne(Specification spec) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.findOne(spec);
	}
	@Override
	public List findAll(Specification spec) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.findAll(spec);
	}
	@Override
	public Page<Object> findAll(Specification spec, Pageable pageable) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.findAll(spec, pageable);
	}
	@Override
	public List findAll(Specification spec, Sort sort) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.findAll(spec, sort);
	}
	@Override
	public long count(Specification spec) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.count(spec);
	}
	@SuppressWarnings("unchecked")
	@Override
	public Page<Object> findPage(BaseQuery Vo) {
	
		return findPageByFieldsAndCriteria(Vo);
	}
	@Override
	public Page findPageByFieldsAndCriteria(BaseQuery Vo) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.findAll(Vo.buildAndSpecification(), Vo.buildPageRequest());
	}
	@Override
	public Page findPageByFieldsOrCriteria(BaseQuery Vo) {
		// TODO Auto-generated method stub
		return dcoreJpaRepository.findAll(Vo.buildOrSpecification(), Vo.buildPageRequest());
	}
	
	
}
