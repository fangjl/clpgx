package com.dlh.clpgx.modules.sys.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.dlh.clpgx.freamwork.dao.BaseDao;
import com.dlh.clpgx.freamwork.dao.BaseDaoImpl;
import com.dlh.clpgx.modules.sys.entity.Module;
public interface ModuleDao extends ModuleDaoCustom, PagingAndSortingRepository<Module, java.lang.Long>,JpaSpecificationExecutor<Module> {
	@Query("from Module where parent.id=?1")	
	public List<Module> findTreeList(Long id);
}



/**
 * DAO自定义接口
 * @author ThinkGem
 */
interface ModuleDaoCustom extends BaseDao<Module> {

}

/**
 * DAO自定义接口实现
 * @author ThinkGem
 */
@Repository
class ModuleDaoImpl extends BaseDaoImpl<Module> implements ModuleDaoCustom {
	
}
