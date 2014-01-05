package com.dlh.clpgx.modules.sys.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import com.dlh.clpgx.freamwork.dao.BaseDao;
import com.dlh.clpgx.freamwork.dao.BaseDaoImpl;
import com.dlh.clpgx.modules.sys.entity.Role;
public interface RoleDao extends PagingAndSortingRepository<Role, java.lang.Long>,JpaSpecificationExecutor<Role> {

}

/**
 * DAO自定义接口
 * @author ThinkGem
 */
interface RoleDaoCustom extends BaseDao<Role> {

}

/**
 * DAO自定义接口实现
 * @author ThinkGem
 */
@Repository
class RoleDaoImpl extends BaseDaoImpl<Role> implements RoleDaoCustom {
	
}

