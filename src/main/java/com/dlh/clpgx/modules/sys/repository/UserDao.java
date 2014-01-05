package com.dlh.clpgx.modules.sys.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.dlh.clpgx.freamwork.dao.BaseDao;
import com.dlh.clpgx.freamwork.dao.BaseDaoImpl;
import com.dlh.clpgx.modules.sys.entity.User;
public interface UserDao extends PagingAndSortingRepository<User, java.lang.Long>,JpaSpecificationExecutor<User> {

	
	@Query("from User where loginName=?1")
	User findUserByLoginName(String loginName);
}

/**
 * DAO自定义接口
 * @author ThinkGem
 */
interface UserDaoCustom extends BaseDao<User> {

}

/**
 * DAO自定义接口实现
 * @author ThinkGem
 */
@Repository
class UserDaoImpl extends BaseDaoImpl<User> implements UserDaoCustom {
	
}

