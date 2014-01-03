package com.dlh.clpgx.modules.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/manager/home")
public class HomeController {

	
	/**
	 * 当企业登入权限验证通过后跳转到买家版首页
	 * @return
	 */
	
	@RequestMapping(method = RequestMethod.GET)
	public String home(){
		return "manager/home";
	}
}
