package com.dlh.clpgx.modules.sys.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dlh.clpgx.freamwork.service.DcoreJpaService;
import org.springframework.transaction.annotation.Transactional;
import com.dlh.clpgx.modules.sys.repository.*;
@Service
@Transactional
public class ModuleService extends DcoreJpaService{
	@Autowired
	public ModuleService(ModuleDao moduleDao) {
		super(moduleDao);
		
	}
	
}
