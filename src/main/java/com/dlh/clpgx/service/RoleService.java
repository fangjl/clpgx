package com.dlh.clpgx.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dlh.clpgx.freamwork.service.DcoreJpaService;
import com.dlh.clpgx.repository.RoleDao;
@Service
public class RoleService extends DcoreJpaService{
	@Autowired
	public RoleService(RoleDao roleDao) {
		super(roleDao);
	}
	
}
