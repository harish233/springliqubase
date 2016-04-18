package com.newt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.newt.model.Employee;

@Repository
public class SampleDAO {

	@Autowired
	private HibernateTemplate template;
	
	public Employee save(Employee emp){
		template.save(emp);
		return emp;
	}
	
	public List<Employee> getRecors(){
		return template.find("from Employee");
	}
}
