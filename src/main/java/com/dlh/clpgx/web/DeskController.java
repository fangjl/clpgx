package com.dlh.clpgx.web;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
@RequestMapping(value="manager/desk")
public class DeskController {
	@RequestMapping(method = RequestMethod.GET)
	public String index(){
		return "manager/desk";
	}
}
