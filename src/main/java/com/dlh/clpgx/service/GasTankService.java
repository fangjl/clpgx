package com.dlh.clpgx.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dlh.clpgx.freamwork.service.DcoreJpaService;
import org.springframework.transaction.annotation.Transactional;
import com.dlh.clpgx.repository.*;
@Service
@Transactional
public class GasTankService extends DcoreJpaService{

	@Autowired
	public GasTankService(GasTankDao gasTankDao) {
		super(gasTankDao);
		
	}
	
}
