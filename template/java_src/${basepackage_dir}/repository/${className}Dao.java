<#include "/java_copyright.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first>   
package ${basepackage}.repository;
import org.springside.modules.persistence.DcoreJpaRepository;
import ${basepackage}.entity.*;
public interface ${className}Dao extends DcoreJpaRepository<${className}, ${table.idColumn.javaType}> {

}
