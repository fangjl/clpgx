<#assign className = table.className>   
<#assign classNameFirstLower = className?uncap_first> 
<#assign classNameLowerCase = className?lower_case>   
package ${basepackage}.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dlh.clpgx.freamwork.service.DcoreJpaService;
import org.springframework.transaction.annotation.Transactional;
import ${basepackage}.repository.*;
@Service
@Transactional
public class ${className}Service extends DcoreJpaService{
	@Autowired
	public ${className}Service(${className}Dao ${classNameFirstLower}Dao) {
		super(${classNameFirstLower}Dao);
		
	}
	
}
