package com.dlh.clpgx.repository;

import org.springframework.data.repository.CrudRepository;

import com.dlh.clpgx.entity.Role;

public interface RoleDao extends CrudRepository<Role, Long> {

	
	
	
	//findRoleByCompany()
	
	// select role.company.id from Role where role.company=?
}
