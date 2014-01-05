package com.dlh.clpgx.modules.sys.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import com.dlh.clpgx.freamwork.dao.BaseDao;
import com.dlh.clpgx.freamwork.dao.BaseDaoImpl;
import com.dlh.clpgx.modules.sys.entity.Office;
public interface OfficeDao extends PagingAndSortingRepository<Office, java.lang.Long>,JpaSpecificationExecutor<Office> {

}

/**
 * DAO自定义接口
 * @author ThinkGem
 */
interface OfficeDaoCustom extends BaseDao<Office> {

}

/**
 * DAO自定义接口实现
 * @author ThinkGem
 */
@Repository
class OfficeDaoImpl extends BaseDaoImpl<Office> implements OfficeDaoCustom {
	
}

