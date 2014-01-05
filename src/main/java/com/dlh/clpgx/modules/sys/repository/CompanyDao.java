package com.dlh.clpgx.modules.sys.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import com.dlh.clpgx.freamwork.dao.BaseDao;
import com.dlh.clpgx.freamwork.dao.BaseDaoImpl;
import com.dlh.clpgx.modules.sys.entity.Company;
public interface CompanyDao extends PagingAndSortingRepository<Company, java.lang.Long>,JpaSpecificationExecutor<Company> {

}

/**
 * DAO自定义接口
 * @author ThinkGem
 */
interface CompanyDaoCustom extends BaseDao<Company> {

}

/**
 * DAO自定义接口实现
 * @author ThinkGem
 */
@Repository
class CompanyDaoImpl extends BaseDaoImpl<Company> implements CompanyDaoCustom {
	
}

