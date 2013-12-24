package com.dlh.clpgx.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import com.dlh.clpgx.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
