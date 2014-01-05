package com.dlh.clpgx.modules.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.dlh.clpgx.freamwork.web.BaseController;
import com.dlh.clpgx.modules.sys.security.ShiroDbRealm.ShiroUser;
@Controller
@RequestMapping("/sys/login")
public class SysLoginController extends BaseController{
	@RequestMapping(method = RequestMethod.GET)
	public String login(){
		return "sys/login";
	}
	@RequestMapping(method = RequestMethod.POST)
	public String login(Model model){
		ShiroUser user = (ShiroUser)super.getCurrentUser();
		/**
		 * 是否登入
		 * 
		 * 是否是系统管理员用户。
		 * 
		 * 密码是否正确
		 */
		if(user==null || user.getId()!=null){
			
		}
		
		return "redirect:/sys/company";
	}
}
