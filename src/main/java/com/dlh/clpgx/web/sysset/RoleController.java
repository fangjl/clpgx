package com.dlh.clpgx.web.sysset;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dlh.clpgx.entity.Role;
import com.dlh.clpgx.service.RoleService;
@Controller
@RequestMapping(value="admin/role")
public class RoleController {
	private RoleService roleService;
	@Autowired
	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model){
		model.addAttribute("roles", roleService.findAll());
		return "sysset/role/index";
	}
	/**
	 * Ajax请求校验loginName是否唯一。
	 */
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView create(@Valid @ModelAttribute("role") Role role) {
		roleService.save(role);
		ModelAndView mav = new ModelAndView("JsonMessage");
		mav.addObject("success", true);
		mav.addObject("message","保存成功!");
		return mav;
	}
	
	/** 删除 */
	@RequestMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") java.lang.Long id) {
		roleService.delete(id);
		
		ModelAndView mav = new ModelAndView("JsonMessage");
		mav.addObject("success", true);
		mav.addObject("message","删除成功!");
		return mav;
	}
}
