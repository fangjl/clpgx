package com.dlh.clpgx.repository;
import com.dlh.clpgx.entity.User;
import com.dlh.clpgx.freamwork.repository.DcoreJpaRepository;
public interface UserDao extends DcoreJpaRepository<User, Long> {
	User findByLoginName(String loginName);
}
