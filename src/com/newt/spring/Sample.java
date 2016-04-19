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
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home.jsp");
		return mv;
	}
	
	@RequestMapping(value="save")
	public ModelAndView save(Employee emp){
		ModelAndView mv = new ModelAndView();
		System.out.println("name :"+emp.getName());
		sampleservice.save(emp);
		List<Employee> list = sampleservice.getRecords();
		mv.addObject("emplist",list);
		mv.setViewName("success.jsp");
		return mv;
		
	}
	
}
