/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2013
 */


package com.dlh.clpgx.web;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springside.modules.domain.BaseQuery;

import com.dlh.clpgx.entity.ClpgxDept;
import com.dlh.clpgx.freamwork.web.BaseController;
import com.dlh.clpgx.service.ClpgxDeptService;



/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */

@Controller
@RequestMapping("/web/clpgxdept")
public class ClpgxDeptController extends BaseController{
	
	
	//默认多列排序,example: username desc,createTime asc
	
	private ClpgxDeptService clpgxDeptService;
	private final String LIST_ACTION = "redirect:/web/clpgxdept";
	private final String LIST_PATH = "/web/clpgxdept";

	/** 
	 * 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写
	 **/
	@Autowired
	public void setClpgxDeptService(ClpgxDeptService service) {
		this.clpgxDeptService = service;
	}
	
	/** binder用于bean属性的设置 */
	@InitBinder  
	public void initBinder(WebDataBinder binder) {  
	        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));  
	}
	   
	/**
	 * 增加了@ModelAttribute的方法可以在本controller方法调用前执行,可以存放一些共享变量,如枚举值,或是一些初始化操作
	 */
	@ModelAttribute
	public void init(Model model) {
		model.addAttribute("now", new java.sql.Timestamp(System.currentTimeMillis()));
		model.addAttribute("action", LIST_PATH);
		model.addAttribute("fields", ClpgxDept.class.getDeclaredFields());
	}
	
	
	/** 列表 */
	@SuppressWarnings("unused")
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model,ClpgxDept vo,
			HttpServletRequest request) {
		
		
		model.addAttribute("pages",clpgxDeptService.findPage(BaseQuery.newBase(request, vo)));
		return "/clpgxdept/index";
	}
	
	
	
	
	/** 进入新增 */
	@RequestMapping(value="/new")
	public String _new(ModelMap model,ClpgxDept clpgxDept,HttpServletRequest request,HttpServletResponse response) throws Exception {
		model.addAttribute("clpgxDept",clpgxDept);
		return "/clpgxdept/new";
	}
	
	
	/** 保存新增,@Valid标注spirng在绑定对象时自动为我们验证对象属性并存放errors在BindingResult  */
	@RequestMapping(method=RequestMethod.POST)
	public String create(ModelMap model,RedirectAttributes redirectAttributes,@Valid ClpgxDept clpgxDept,BindingResult errors,HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(errors.hasErrors()) {
			return  "/clpgxdept/new";
		}
		
		clpgxDeptService.save(clpgxDept);
		redirectAttributes.addFlashAttribute("message", "保存成功！");
		return LIST_ACTION;
	}
	
	
	
	
	/** 编辑 */
	@RequestMapping(value="/{id}/edit")
	public String edit(ModelMap model,@PathVariable java.lang.Long id) throws Exception {
		ClpgxDept clpgxDept = (ClpgxDept)clpgxDeptService.findOne(id);
		model.addAttribute("clpgxdept",clpgxDept);
		return "/clpgxdept/edit";
	}
	

	
	
	/** 保存更新,@Valid标注spirng在绑定对象时自动为我们验证对象属性并存放errors在BindingResult  */
	@RequestMapping(value="/{id}",method=RequestMethod.PUT)
	public String update(ModelMap model,@PathVariable java.lang.Long id,@Valid ClpgxDept clpgxDept,BindingResult errors,
			RedirectAttributes redirectAttributes) throws Exception {
		if(errors.hasErrors()) {
			return "/clpgxdept/edit";
		}
		
		clpgxDeptService.save(clpgxDept);
		redirectAttributes.addFlashAttribute("message", "更新任务成功");
		return LIST_ACTION;
	}
	
	
	
	/** 删除 */
	@RequestMapping(value="delete/{id}")
	public String delete(@PathVariable java.lang.Long id,RedirectAttributes redirectAttributes) {
		clpgxDeptService.delete(id);
		redirectAttributes.addFlashAttribute("message", "删除任务成功");
		return LIST_ACTION;
	}

}

