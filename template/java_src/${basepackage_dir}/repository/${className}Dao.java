
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first>   
package ${basepackage}.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import com.dlh.clpgx.freamwork.dao.BaseDao;
import com.dlh.clpgx.freamwork.dao.BaseDaoImpl;
import ${basepackage}.entity.${className};
public interface ${className}Dao extends PagingAndSortingRepository<${className}, ${table.idColumn.javaType}>,JpaSpecificationExecutor<${className}> {

}

/**
 * DAO自定义接口
 * @author ThinkGem
 */
interface ${className}DaoCustom extends BaseDao<${className}> {

}

/**
 * DAO自定义接口实现
 * @author ThinkGem
 */
@Repository
class ${className}DaoImpl extends BaseDaoImpl<${className}> implements ${className}DaoCustom {
	
}

