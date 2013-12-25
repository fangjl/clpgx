package com.dlh.clpgx.web.sysset;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dlh.clpgx.entity.Company;
import com.dlh.clpgx.service.CompanyService;
import com.dlh.clpgx.service.account.ShiroDbRealm.ShiroUser;
@Controller
@RequestMapping(value="admin/company")
public class CompanyController {
	private CompanyService companyService;
	@Autowired
	public void setCompanyService(CompanyService companyService){
		this.companyService= companyService;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model){
		model.addAttribute("company",companyService.findOne(getCurrentUser().company.getId()));
		return "sysset/company/index";
	}
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView create(Company company) {
		companyService.save(company);
		ModelAndView mav = new ModelAndView("JsonMessage");
		mav.addObject("success", true);
		mav.addObject("message","保存成功!");
		return mav;
	}
	
	/**
	 * 取出Shiro中的当前用户Id.
	 */
	private ShiroUser getCurrentUser() {
		ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
		return user;
	}

}
