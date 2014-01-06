package com.dlh.clpgx.modules.manager.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import com.dlh.clpgx.freamwork.dao.BaseDao;
import com.dlh.clpgx.freamwork.dao.BaseDaoImpl;
import com.dlh.clpgx.modules.manager.entity.FillRecords;
public interface FillRecordsDao extends PagingAndSortingRepository<FillRecords, java.lang.Long>,JpaSpecificationExecutor<FillRecords> {

}

/**
 * DAO自定义接口
 */
interface FillRecordsDaoCustom extends BaseDao<FillRecords> {

}

/**
 * DAO自定义接口实现
 * @author ThinkGem
 */
@Repository
class FillRecordsDaoImpl extends BaseDaoImpl<FillRecords> implements FillRecordsDaoCustom {
	
}

