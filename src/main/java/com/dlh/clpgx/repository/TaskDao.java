package com.dlh.clpgx.repository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import com.dlh.clpgx.entity.Task;
import com.dlh.clpgx.freamwork.repository.DcoreJpaRepository;
public interface TaskDao extends DcoreJpaRepository<Task, Long>{
	Page<Task> findByUserId(Long id, Pageable pageRequest);
	@Modifying
	@Query("delete from Task task where task.user.id=?1")
	void deleteByUserId(Long id);
}
