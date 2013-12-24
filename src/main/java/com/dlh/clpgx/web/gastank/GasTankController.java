package com.dlh.clpgx.web.gastank;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="admin/gastank")
public class GasTankController {

	
	@RequestMapping(method = RequestMethod.GET)
	public String index(){
		return "gastank/index";
	}
}
