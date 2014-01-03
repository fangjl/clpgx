package com.dlh.clpgx.freamwork.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.springframework.data.domain.Page;

import com.dlh.clpgx.modules.sys.security.ShiroDbRealm.ShiroUser;

public class BaseController {
  
	public Long getCurrentUserId(){
		ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
		if(user!=null){

			return user.id;
		}
		return null;
	}
	public ShiroUser getCurrentUser(){
		return  (ShiroUser) SecurityUtils.getSubject().getPrincipal();
	}

	public  Map TransformationDataTableMap(Page page,HttpServletRequest request){
		int pagesize = Integer.parseInt(request.getParameter("iDisplayLength"));
		Map m = new HashMap();
		m.put("sEcho",request.getParameter("sEcho"));
		m.put("iTotalRecords",page.getTotalElements());
		m.put("iTotalDisplayRecords",page.getTotalElements());
		m.put("aaData", page.getContent());
		return m;
	}
}
