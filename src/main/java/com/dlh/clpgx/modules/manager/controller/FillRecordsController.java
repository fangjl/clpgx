/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2013
 */


package com.dlh.clpgx.modules.manager.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springside.modules.domain.BaseQuery;
import com.dlh.clpgx.freamwork.domain.DatatablesQuery;
import com.dlh.clpgx.freamwork.web.BaseController;
import com.dlh.clpgx.modules.manager.entity.FillRecords;
import com.dlh.clpgx.modules.manager.service.FillRecordsService;
@Controller
@RequestMapping("/web/fillrecords")
public class FillRecordsController extends BaseController{
	//默认多列排序,example: username desc,createTime asc
	private FillRecordsService fillRecordsService;
	private final String LIST_ACTION = "redirect:/web/fillrecords";
	private final String LIST_PATH = "/web/fillrecords";
	/** 
	 * 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写
	 **/
	@Autowired
	public void setFillRecordsService(FillRecordsService service) {
		this.fillRecordsService = service;
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
		model.addAttribute("fields", FillRecords.class.getDeclaredFields());
	}
	@RequestMapping(value="base" ,method = RequestMethod.GET)
	public String base() {
		
		return "/fillrecords/base";
	}
	
	
	
	/** 列表 
	 * @throws JSONException */
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model,FillRecords vo,
			HttpServletRequest request) throws JSONException {
	//	Page page =fillRecordsService.findPage(BaseQuery.newBase(request, vo));
		model.addAttribute("pages",fillRecordsService.findPage(new BaseQuery(request, vo)));
		return "/fillrecords/index";
	}
	
	
	/** 列表 
	 * @throws JSONException */
	@RequestMapping(value = "/grid" ,method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map> grid(ModelMap model,FillRecords vo,
			HttpServletRequest request) throws JSONException {
		Page page =fillRecordsService.findPageByFieldsOrCriteria(new DatatablesQuery(request, vo));
		ResponseEntity<Map> responseResult = new ResponseEntity<Map>(ConversPage(page,request), org.springframework.http.HttpStatus.OK);     
		return responseResult;
		
	//	model.addAttribute("pages",fillRecordsService.findPage(BaseQuery.newBase(request, vo)));
		//return "/fillrecords/index";
	}
	
	
	public  Map ConversPage(Page page,HttpServletRequest request){
		int pagesize = Integer.parseInt(request.getParameter("iDisplayLength"));
		Map m = new HashMap();
		int current =  page.getNumber() + 1;
		int begin = Math.max(1, current - pagesize/2);
		int end = Math.min(begin + (pagesize - 1), page.getTotalPages());
//		int begin = Math.max(1, current - 20/2);
//		int end = Math.min(begin + (20 - 1), page.getTotalPages());
	//	m.put("sEcho",request.getParameter("sEcho"));
		m.put("iTotalRecords",page.getTotalElements());
		m.put("iTotalDisplayRecords",page.getTotalElements());
		m.put("aaData", page.getContent());
		
		return m;
	}
	
	
	/** 进入新增 */
	@RequestMapping(value="/new")
	public String _new(ModelMap model,FillRecords fillRecords,HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		model.addAttribute("fillRecords",fillRecords);
		return "/fillrecords/new";
	}
	
	
	/** 保存新增,@Valid标注spirng在绑定对象时自动为我们验证对象属性并存放errors在BindingResult  */
	@RequestMapping(method=RequestMethod.POST)
	public String create(ModelMap model,RedirectAttributes redirectAttributes,@Valid FillRecords fillRecords,BindingResult errors,HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(errors.hasErrors()) {
			return  "/fillrecords/new";
		}
		
		fillRecordsService.save(fillRecords);
		redirectAttributes.addFlashAttribute("message", "保存成功！");
		return LIST_ACTION;
	}
	
	
	
	
	/** 编辑 */
	@RequestMapping(value="/{id}/edit")
	public String edit(ModelMap model,@PathVariable java.lang.String id) throws Exception {
		FillRecords fillRecords = (FillRecords)fillRecordsService.findOne(id);
		model.addAttribute("fillRecords",fillRecords);
		return "/fillrecords/edit";
	}
	

	
	
	/** 保存更新,@Valid标注spirng在绑定对象时自动为我们验证对象属性并存放errors在BindingResult  */
	@RequestMapping(value="/{id}",method=RequestMethod.PUT)
	public String update(ModelMap model,@PathVariable java.lang.String id,@Valid FillRecords fillRecords,BindingResult errors,
			RedirectAttributes redirectAttributes) throws Exception {
		if(errors.hasErrors()) {
			return "/fillrecords/edit";
		}
		
		fillRecordsService.save(fillRecords);
		redirectAttributes.addFlashAttribute("message", "更新任务成功");
		return LIST_ACTION;
	}
	
	
	
	
	/** 删除 */
	@RequestMapping(value="delete/{id}",method=RequestMethod.DELETE)
	public String delete(@PathVariable java.lang.String id,RedirectAttributes redirectAttributes) {
		fillRecordsService.delete(id);
		redirectAttributes.addFlashAttribute("message", "删除任务成功");
		return LIST_ACTION;
	}

}

