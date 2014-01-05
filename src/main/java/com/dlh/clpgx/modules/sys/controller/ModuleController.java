package com.dlh.clpgx.modules.sys.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springside.modules.domain.BaseQuery;
import com.dlh.clpgx.freamwork.domain.DatatablesQuery;
import com.dlh.clpgx.freamwork.web.BaseController;
import com.dlh.clpgx.modules.sys.entity.Module;
import com.dlh.clpgx.modules.sys.service.ModuleService;

@Controller
@RequestMapping("/sys/module")
public class ModuleController extends BaseController{
	
	
	//默认多列排序,example: username desc,createTime asc
	
	private ModuleService moduleService;
	private final String LIST_ACTION = "redirect:/sys/module";
	private final String BASE_PATH = "/sys/module";

	/** 
	 * 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写
	 **/
	@Autowired
	public void setModuleService(ModuleService service) {
		this.moduleService = service;
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
		model.put("action", BASE_PATH);
		model.addAttribute("fields", Module.class.getDeclaredFields());
	}
	
	
	/**普通的跳转分页 
	 * 前台参数:
	 *     页码         ----->               pageNumber=1;
		      每页显示    ----->               pageSize=10;
		     排序的Bean属性   ----->            sortFiled="id";
		    排序类型   默认按DESC  ----->         sortType="DESC";
	 * 列表
	 * 
	 *  */
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model,Module vo,
			HttpServletRequest request) {
		//model.addAttribute("pages",moduleService.findPageByFieldsAndCriteria(new BaseQuery(request, vo)));
		return BASE_PATH+"/index";
	}
	
	/**转换成 DatatablesQuery  
	 *  用异步Ajax表 
	 * @throws JSONException */
	@RequestMapping(value = "/list" ,method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map> list(ModelMap model,Module vo,
			HttpServletRequest request){
		Page page =moduleService.findPageByFieldsOrCriteria(new DatatablesQuery(request, vo));
		ResponseEntity<Map> responseResult = new ResponseEntity<Map>(TransformationDataTableMap(page,request), org.springframework.http.HttpStatus.OK);     
		return responseResult;
	}
	
	/**转换成 DatatablesQuery  
	 *  用异步Ajax表 
	 * @throws JSONException */
	@RequestMapping(value = "/tree" ,method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map> tree(ModelMap model,Module vo,
			HttpServletRequest request){
		Page page =moduleService.f
		ResponseEntity<Map> responseResult = new ResponseEntity<Map>(TransformationDataTableMap(page,request), org.springframework.http.HttpStatus.OK);     
		return responseResult;
	}
	
	
	/** 进入新增 */
	@RequestMapping(value="/new")
	public String _new(ModelMap model,Module module,HttpServletRequest request,HttpServletResponse response) throws Exception {
		model.addAttribute("module",module);
		return BASE_PATH+"/new";
	}
	
	
	/** 保存新增,@Valid标注spirng在绑定对象时自动为我们验证对象属性并存放errors在BindingResult  */
	@RequestMapping(method=RequestMethod.POST)
	public String create(ModelMap model,RedirectAttributes redirectAttributes,@Valid Module module,BindingResult errors,HttpServletRequest request,HttpServletResponse response) throws Exception {
		if(errors.hasErrors()) {
			return  BASE_PATH+"/new";
		}
		
		moduleService.save(module);
		redirectAttributes.addFlashAttribute("message", "保存成功！");
		return LIST_ACTION;
	}
	
	
	
	
	/** 编辑 */
	@RequestMapping(value="/{id}/edit")
	public String edit(ModelMap model,@PathVariable java.lang.Long id)  {
		Module module = (Module)moduleService.findOne(id);
		model.addAttribute("module",module);
		return BASE_PATH+"edit";
	}
	

	
	
	/** 保存更新,@Valid标注spirng在绑定对象时自动为我们验证对象属性并存放errors在BindingResult  */
	@RequestMapping(value="/{id}",method=RequestMethod.PUT)
	public String update(ModelMap model,@PathVariable java.lang.Long id,@Valid Module module,BindingResult errors,
			RedirectAttributes redirectAttributes) throws Exception {
		if(errors.hasErrors()) {
			return BASE_PATH+"/edit";
		}
		
		moduleService.save(module);
		redirectAttributes.addFlashAttribute("message", "更新任务成功");
		return LIST_ACTION;
	}
	
	
	
	
	/** 删除 */
	@RequestMapping(value="delete/{id}",method=RequestMethod.DELETE)
	public String delete(@PathVariable java.lang.Long id,RedirectAttributes redirectAttributes) {
		moduleService.delete(id);
		redirectAttributes.addFlashAttribute("message", "删除任务成功");
		return LIST_ACTION;
	}

}

