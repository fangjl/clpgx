package com.dlh.clpgx.freamwork.repository;
import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;
@NoRepositoryBean
public interface DcoreJpaRepository<T, ID extends Serializable> extends JpaRepository<T, ID> {
	
	public List queryBySql(String sql);
}
