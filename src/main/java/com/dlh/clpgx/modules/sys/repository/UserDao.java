package com.dlh.clpgx.modules.sys.repository;
import org.springside.modules.persistence.DcoreJpaRepository;
import com.dlh.clpgx.modules.sys.entity.User;
public interface UserDao extends DcoreJpaRepository<User, Long> {
	User findByLoginName(String loginName);
}
