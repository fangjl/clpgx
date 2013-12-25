package com.dlh.clpgx.freamwork.repository;
import static org.springframework.data.querydsl.QueryDslUtils.QUERY_DSL_PRESENT;

import java.io.Serializable;

import javax.persistence.EntityManager;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.support.JpaEntityInformation;
import org.springframework.data.jpa.repository.support.JpaRepositoryFactory;
import org.springframework.data.jpa.repository.support.QueryDslJpaRepository;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;
import org.springframework.data.repository.core.RepositoryMetadata;
public class DcoreJpaRepositoryFactory extends JpaRepositoryFactory{
	Logger logger = LoggerFactory.getLogger(DcoreJpaRepositoryFactory.class);

	public DcoreJpaRepositoryFactory(EntityManager entityManager) {
		super(entityManager);
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	protected <T, ID extends Serializable> JpaRepository<?, ?> getTargetRepository(RepositoryMetadata metadata,
			EntityManager entityManager) {

		Class<?> repositoryInterface = metadata.getRepositoryInterface();
		JpaEntityInformation<?, Serializable> entityInformation = getEntityInformation(metadata.getDomainType());

		SimpleJpaRepository<?, ?> repo = isQueryDslExecutor(repositoryInterface) ? new QueryDslJpaRepository(
				entityInformation, entityManager) : new MyDcoreJpaRepository(entityInformation, entityManager);
		return repo;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.springframework.data.repository.support.RepositoryFactorySupport#
	 * getRepositoryBaseClass()
	 */
	@Override
	protected Class<?> getRepositoryBaseClass(RepositoryMetadata metadata) {

		if (isQueryDslExecutor(metadata.getRepositoryInterface())) {
			return QueryDslJpaRepository.class;
		} else {
			return MyDcoreJpaRepository.class;
		}
	}
	
	private boolean isQueryDslExecutor(Class<?> repositoryInterface) {

		return QUERY_DSL_PRESENT && QueryDslPredicateExecutor.class.isAssignableFrom(repositoryInterface);
	}

}
