package com.dlh.clpgx.modules.sys.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import com.dlh.clpgx.freamwork.dao.BaseDao;
import com.dlh.clpgx.freamwork.dao.BaseDaoImpl;
import com.dlh.clpgx.modules.sys.entity.Log;
public interface LogDao extends PagingAndSortingRepository<Log, java.lang.Long>,JpaSpecificationExecutor<Log> {

}

/**
 * DAO自定义接口
 * @author ThinkGem
 */
interface LogDaoCustom extends BaseDao<Log> {

}

/**
 * DAO自定义接口实现
 * @author ThinkGem
 */
@Repository
class LogDaoImpl extends BaseDaoImpl<Log> implements LogDaoCustom {
	
}

