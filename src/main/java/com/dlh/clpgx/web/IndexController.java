package com.dlh.clpgx.web;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
@RequestMapping(value="/index")
public class IndexController {
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model){
		model.addAttribute("title", "加气站前台页面");
	
		System.out.println("23333333333333");
		return "index";
	}
}
