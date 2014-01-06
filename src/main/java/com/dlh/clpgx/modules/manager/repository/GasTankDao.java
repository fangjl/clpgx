package com.dlh.clpgx.modules.manager.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import com.dlh.clpgx.freamwork.dao.BaseDao;
import com.dlh.clpgx.freamwork.dao.BaseDaoImpl;
import com.dlh.clpgx.modules.manager.entity.GasTank;
public interface GasTankDao extends PagingAndSortingRepository<GasTank, java.lang.Long>,JpaSpecificationExecutor<GasTank> {

}

/**
 * DAO自定义接口
 */
interface GasTankDaoCustom extends BaseDao<GasTank> {

}

/**
 * DAO自定义接口实现
 * @author ThinkGem
 */
@Repository
class GasTankDaoImpl extends BaseDaoImpl<GasTank> implements GasTankDaoCustom {
	
}

