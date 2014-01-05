package com.dlh.clpgx.modules.sys.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import com.dlh.clpgx.freamwork.dao.BaseDao;
import com.dlh.clpgx.freamwork.dao.BaseDaoImpl;
import com.dlh.clpgx.modules.sys.entity.Area;
public interface AreaDao extends PagingAndSortingRepository<Area, java.lang.Long>,JpaSpecificationExecutor<Area> {

}

/**
 * DAO自定义接口
 * @author ThinkGem
 */
interface AreaDaoCustom extends BaseDao<Area> {

}

/**
 * DAO自定义接口实现
 * @author ThinkGem
 */
@Repository
class AreaDaoImpl extends BaseDaoImpl<Area> implements AreaDaoCustom {
	
}

