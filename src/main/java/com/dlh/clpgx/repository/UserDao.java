package com.dlh.clpgx.repository;
import org.springside.modules.persistence.DcoreJpaRepository;

import com.dlh.clpgx.entity.User;
public interface UserDao extends DcoreJpaRepository<User, Long> {
	User findByLoginName(String loginName);
}
