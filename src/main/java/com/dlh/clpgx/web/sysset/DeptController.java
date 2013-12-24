package com.dlh.clpgx.web.sysset;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.dlh.clpgx.entity.Dept;
import com.dlh.clpgx.service.DeptService;
@Controller
@RequestMapping(value="admin/dept")
public class DeptController {
	
	@Resource
	private DeptService deptService;
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model){
		model.addAttribute("title", "部门管理");
		return "sysset/dept/index";
	}
	
	private String code;
	private String name;
	private String remark;
	/**
	 * Ajax请求校验loginName是否唯一。
	 */
	@RequestMapping(value = "put")
	@ResponseBody
	public String put(@Valid @ModelAttribute("dept") Dept dept) {
		deptService.save(dept);
		return "true";
	}
}
