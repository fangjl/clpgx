package com.dlh.clpgx.modules.sys.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.dlh.clpgx.freamwork.web.BaseController;
@Controller
@RequestMapping("/manager/sys/org")
public class OrgController extends BaseController{
	private final String LIST_ACTION = "redirect:/manager/sys/org";
	private final String BASE_PATH = "/manager/sys/org";
	@RequestMapping(method = RequestMethod.GET)
	public String index(){
		return BASE_PATH+"/index";
	}
}
