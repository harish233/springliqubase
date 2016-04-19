package com.newt.spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.newt.model.Employee;
import com.newt.service.Sampleservice;

@Controller
public class Sample {

	@Autowired
	private Sampleservice sampleservice;
	
	@RequestMapping(value="home")
	public ModelAndView home(){
		System.out.println("hello newt");
		ModelAndView mv = new ModelAndView();
		List<Employee> list = sampleservice.getRecors();
		System.out.println(list.isEmpty());
		mv.addObject("emplist",list);
		mv.setViewName("home.jsp");
		return mv;
	}
	
	@RequestMapping(value="save")
	public ModelAndView save(Employee emp){
		ModelAndView mv = new ModelAndView();
		System.out.println("name :"+emp.getName());
		sampleservice.save(emp);
		
		mv.setViewName("success.jsp");
		return mv;
		
	}
	
}
