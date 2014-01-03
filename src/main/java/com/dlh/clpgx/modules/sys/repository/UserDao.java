package com.dlh.clpgx.modules.sys.repository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.dlh.clpgx.modules.sys.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
