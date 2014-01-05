package com.dlh.clpgx.modules.sys.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import com.dlh.clpgx.freamwork.dao.BaseDao;
import com.dlh.clpgx.freamwork.dao.BaseDaoImpl;
import com.dlh.clpgx.modules.sys.entity.Dict;
public interface DictDao extends PagingAndSortingRepository<Dict, java.lang.Long>,JpaSpecificationExecutor<Dict> {

}

/**
 * DAO自定义接口
 * @author ThinkGem
 */
interface DictDaoCustom extends BaseDao<Dict> {

}

/**
 * DAO自定义接口实现
 * @author ThinkGem
 */
@Repository
class DictDaoImpl extends BaseDaoImpl<Dict> implements DictDaoCustom {
	
}

