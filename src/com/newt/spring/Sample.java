package com.newt.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Sample {

	@RequestMapping(value="save")
	public ModelAndView save(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("success.jsp");
		return mv;
		
	}
	
}
