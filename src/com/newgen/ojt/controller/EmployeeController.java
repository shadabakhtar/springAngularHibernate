package com.newgen.ojt.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.newgen.ojt.beans.Employee;
import com.newgen.ojt.services.UserService;

@RestController
@RequestMapping(value = "/api/employees")
public class EmployeeController {
	

	@Autowired
	UserService userservice;
	
	 
	@RequestMapping(method = RequestMethod.GET)
	public List<Employee> getEmployees() {
		List<Employee> employees = new ArrayList<Employee>();
		System.out.println("s1");
		List<Employee> emps = userservice.fetchAllEmployee();
		for(Employee em : emps) {
			employees.add(em);
		}
		System.out.println("emps : "+emps.size());
	return employees;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public List<Employee> saveEmployee(@RequestBody Employee emp) {
		List<Employee> employees = new ArrayList<Employee>();
		System.out.println("save");
	if (employees.size() != 0) {
	Employee lastEmp = employees.stream().skip(employees.size() - 1).findFirst().orElse(null);
	}
	Employee employee = new Employee();
	System.out.println("email : "+employee.getEmail());
	employee.setPhoneNo(emp.getPhoneNo());
	employee.setEmail(emp.getEmail());
	employee.setFirstName(emp.getFirstName());
	boolean done = userservice.createEmployee(employee);
	if(done)
	{
		List<Employee> emps = userservice.fetchAllEmployee();
		System.out.println("emps : "+emps.size());
		for(Employee em : emps) {
			employees.add(em);
		}
	}
	System.out.println("emp : "+employee.getFirstName());
	return employees;
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public Employee getEmployee(@PathVariable("id") Long id) {
		List<Employee> employees = new ArrayList<Employee>();
		System.out.println("getAllEmpp1");
		Employee employee = userservice.getEmployeeById(id);
		System.out.println("employee"+employee.getFirstName());
		List<Employee> emps = userservice.fetchAllEmployee();
		for(Employee em : emps) {
			if(em.getId()==id) {
			employees.add(em);
			System.out.println("aj");}
		}
	return employees.stream().filter(emp -> emp.getId() == id).findFirst().orElse(null);
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public List<Employee> deleteEmployee(@PathVariable Long id) {
		List<Employee> employees = new ArrayList<Employee>();
		System.out.println("delete");
		boolean done = userservice.deleteEmployessById(id);
		if(done) {
			List<Employee> emps = userservice.fetchAllEmployee();
			for(Employee em : emps) {
				employees.add(em);
			}
		}
	for(Iterator<Employee> itr=employees.iterator();itr.hasNext();)
	{
	Employee emp = itr.next();
	Long inId = emp.getId();
	if(inId == (id)){
	itr.remove();
	}
	}
	return employees;
	}
}
