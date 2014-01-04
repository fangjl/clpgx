package com.dlh.clpgx.modules.manager.controller;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.dlh.clpgx.freamwork.web.BaseController;
import com.dlh.clpgx.modules.sys.security.ShiroDbRealm.ShiroUser;
@Controller
@RequestMapping("/manager/login")
public class ManagerLoginController extends BaseController{
	
	@RequestMapping(method = RequestMethod.GET)
	public String login(){
		return "manager/login";
	}
	@RequestMapping(value="lock" ,method = RequestMethod.GET)
	public String lock(){
		return "manager/lock";
	}
	
	/**
	 * 登入失败验证
	 * @param userName
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.POST)
	public String fail(@RequestParam(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM) String userName, Model model) {
		ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
//		if(user!=null &&!user.getName().equals("")){
//			return "redirect:manager/home";
//		}
		model.addAttribute(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM, userName);
		return "manager/login";
	}
	

}
