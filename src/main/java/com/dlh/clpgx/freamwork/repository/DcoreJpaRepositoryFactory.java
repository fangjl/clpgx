package com.dlh.clpgx.freamwork.repository;

import java.io.Serializable;
import javax.persistence.EntityManager;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.support.JpaEntityInformation;
import org.springframework.data.jpa.repository.support.JpaRepositoryFactory;
import org.springframework.data.repository.core.RepositoryMetadata;

public class DcoreJpaRepositoryFactory extends JpaRepositoryFactory{

	private final EntityManager entityManager;
	public DcoreJpaRepositoryFactory(EntityManager entityManager) {
		super(entityManager);
		this.entityManager=entityManager;
	}


	@Override
	protected <T, ID extends Serializable> JpaRepository<?, ?> getTargetRepository(
			RepositoryMetadata metadata, EntityManager entityManager) {
		// TODO Auto-generated method stub
		
		
		JpaEntityInformation<?, Serializable> entityInformation = getEntityInformation(metadata.getDomainType());
		return new MyDcoreJpaRepository(entityInformation, entityManager);
	}

	
	
	
}
