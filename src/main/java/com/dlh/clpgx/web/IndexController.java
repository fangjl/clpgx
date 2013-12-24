package com.dlh.clpgx.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping(value="admin/index")
public class IndexController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(){
		return "main/main";
	}
	@RequestMapping(value="desk")
	public String desk(){
		return "main/desk";
	}
	@RequestMapping(value="sysset")
	public String sysSet(){
		return "sysset/index";
	}
}
