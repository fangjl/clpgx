package com.dlh.clpgx.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dlh.clpgx.entity.Role;
import com.dlh.clpgx.repository.RoleDao;
@Service
public class RoleService {
	private RoleDao roleDao;
	@Autowired
	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
	}
	public void save(Role role){
		roleDao.save(role);
	}
	public void delete(Long id){
		roleDao.delete(id);
	}
	public List<Role> findAll(){
		return (List<Role>)roleDao.findAll();
	}
}
