package com.dlh.clpgx.web.sysset;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
@RequestMapping(value="admin/company")
public class CompanyController {
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model){
		model.addAttribute("title", "公司管理");
		return "sysset/company/index";
	}

}
