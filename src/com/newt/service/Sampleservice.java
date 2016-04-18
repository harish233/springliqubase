package com.newt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newt.dao.SampleDAO;
import com.newt.model.Employee;

@Service
public class Sampleservice {

	@Autowired
	private SampleDAO sampledao;
	
	public Employee save(Employee emp){
		return sampledao.save(emp);
	}
	
	public List<Employee> getRecors(){
		return sampledao.getRecors();
		
	}
}
