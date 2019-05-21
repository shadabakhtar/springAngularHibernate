package com.newgen.ojt.dao;

import java.util.List;

import com.newgen.ojt.beans.Employee;
import com.newgen.ojt.beans.UserDetail;

public interface UserDao {

	boolean createUser(UserDetail userDetail);
	UserDetail getUserById(int userId);
	boolean deleteUserById(int userId);
	List<UserDetail> fetchAllUser();
	boolean updateUser(UserDetail userDetail);
	List<Employee> fetchAllEmployee();
	boolean createEmployee(Employee employee);
	Employee getEmployeeById(Long id);
	boolean deleteEmployessById(Long id);
	
}
