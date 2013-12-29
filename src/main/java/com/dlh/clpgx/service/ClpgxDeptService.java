/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2013
 */

package com.dlh.clpgx.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dlh.clpgx.freamwork.service.DcoreJpaService;
import com.dlh.clpgx.repository.ClpgxDeptDao;



/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */
@Service
@Transactional
public class ClpgxDeptService extends DcoreJpaService{

	@Autowired
	public ClpgxDeptService(ClpgxDeptDao clpgxDeptDao) {
		super(clpgxDeptDao);
	}
	
}
