package com.dlh.clpgx.web.fill;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping(value="admin/fill")
public class FillController {

	
	@RequestMapping(method = RequestMethod.GET)
	public String index(){
		return "fill/index";
	}
}
