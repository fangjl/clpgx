/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2013
 */


package com.dlh.clpgx.web;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
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
import com.dlh.clpgx.freamwork.web.BaseController;
import com.dlh.clpgx.entity.Sysmodule;
import com.dlh.clpgx.service.SysmoduleService;
@Controller
@RequestMapping("/web/sysmodule")
public class SysmoduleController extends BaseController{
	
	
	//默认多列排序,example: username desc,createTime asc
	
	private SysmoduleService sysmoduleService;
	private final String LIST_ACTION = "redirect:/web/sysmodule";
	private final String LIST_PATH = "/web/sysmodule";

	/** 
	 * 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写
	 **/
	@Autowired
	public void setSysmoduleService(SysmoduleService service) {
		this.sysmoduleService = service;
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
	public void init(ModelMap model) {
		model.put("now", new java.sql.Timestamp(System.currentTimeMillis()));
		model.put("action", LIST_PATH);
		model.addAttribute("fields", Sysmodule.class.getDeclaredFields());
	}
	
	
	/** 列表 */
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model,Sysmodule vo,
			HttpServletRequest request) {
		model.addAttribute("pages",sysmoduleService.findPage(new BaseQuery(request, vo)));
		return "/sysmodule/index";
	}
	
	
	
	
	/** 进入新增 */
	@RequestMapping(value="/new")
	public String _new(ModelMap model,Sysmodule sysmodule,HttpServletRequest request,HttpServletResponse response) throws Exception {
		model.addAttribute("sysmodule",sysmodule);
		return "/sysmodule/new";
	}
	
	
	/** 保存新增,@Valid标注spirng在绑定对象时自动为我们验证对象属性并存放errors在BindingResult  */
	@RequestMapping(method=RequestMethod.POST)
	public String create(ModelMap model,RedirectAttributes redirectAttributes,@Valid Sysmodule sysmodule,BindingResult errors,HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(errors.hasErrors()) {
			return  "/sysmodule/new";
		}
		
		sysmoduleService.save(sysmodule);
		redirectAttributes.addFlashAttribute("message", "保存成功！");
		return LIST_ACTION;
	}
	
	
	
	
	/** 编辑 */
	@RequestMapping(value="/{id}/edit")
	public String edit(ModelMap model,@PathVariable java.lang.Long id) throws Exception {
		Sysmodule sysmodule = (Sysmodule)sysmoduleService.findOne(id);
		model.addAttribute("sysmodule",sysmodule);
		return "/sysmodule/edit";
	}
	

	
	
	/** 保存更新,@Valid标注spirng在绑定对象时自动为我们验证对象属性并存放errors在BindingResult  */
	@RequestMapping(value="/{id}",method=RequestMethod.PUT)
	public String update(ModelMap model,@PathVariable java.lang.Long id,@Valid Sysmodule sysmodule,BindingResult errors,
			RedirectAttributes redirectAttributes) throws Exception {
		if(errors.hasErrors()) {
			return "/sysmodule/edit";
		}
		
		sysmoduleService.save(sysmodule);
		redirectAttributes.addFlashAttribute("message", "更新任务成功");
		return LIST_ACTION;
	}
	
	
	
	
	/** 删除 */
	@RequestMapping(value="delete/{id}",method=RequestMethod.DELETE)
	public String delete(@PathVariable java.lang.Long id,RedirectAttributes redirectAttributes) {
		sysmoduleService.delete(id);
		redirectAttributes.addFlashAttribute("message", "删除任务成功");
		return LIST_ACTION;
	}

}

