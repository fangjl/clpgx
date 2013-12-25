package com.dlh.clpgx.repository;
import com.dlh.clpgx.entity.Role;
import com.dlh.clpgx.freamwork.repository.DcoreJpaRepository;
public interface RoleDao extends DcoreJpaRepository<Role, Long> {

	
	
	//findRoleByCompany()
	
	// select role.company.id from Role where role.company=?
}
