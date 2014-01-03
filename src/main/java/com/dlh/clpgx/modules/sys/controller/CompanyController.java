package com.dlh.clpgx.modules.sys.controller;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dlh.clpgx.freamwork.web.BaseController;
import com.dlh.clpgx.modules.sys.security.ShiroDbRealm.ShiroUser;
import com.dlh.clpgx.modules.sys.service.CompanyService;
@Controller
@RequestMapping("/manager/sys/company")
public class CompanyController extends BaseController{
	
	private CompanyService companyService;
	@Autowired
	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}

	private final String LIST_ACTION = "redirect:/manager/sys/company";
	private final String BASE_PATH = "/manager/sys/company";
	@RequestMapping(method = RequestMethod.GET)
	public String index(){
		return BASE_PATH+"/index";
	}
	
	

	private ShiroUser getCurrrentUser(){
		return(ShiroUser) SecurityUtils.getSubject().getPrincipal();
	}

	
}
