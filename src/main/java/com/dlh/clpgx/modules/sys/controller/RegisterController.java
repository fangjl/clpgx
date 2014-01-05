package com.dlh.clpgx.modules.sys.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dlh.clpgx.modules.sys.entity.User;
import com.dlh.clpgx.modules.sys.service.UserService;
/**
 * 用户注册的Controller.
 * 
 * @author fangjl
 */
@Controller
@RequestMapping(value = "/sys/register")
public class RegisterController {

	@Autowired
	private UserService userService;

	@RequestMapping(method = RequestMethod.POST)
	public String register( User user,RedirectAttributes redirectAttributes) {
		
		
		userService.registerUser(user);
		redirectAttributes.addFlashAttribute("username", user.getLoginName());
		return "redirect:/manager/login";
	}

	/**
	 * Ajax请求校验loginName是否唯一。
	 */
	@RequestMapping(value = "checkLoginName")
	@ResponseBody
	public String checkLoginName(@RequestParam("loginName") String loginName) {
		if (userService.findUserByLoginName(loginName) == null) {
			return "true";
		} else {
			return "false";
		}
	}
}
