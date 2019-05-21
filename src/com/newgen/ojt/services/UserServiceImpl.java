package com.newgen.ojt.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.newgen.ojt.beans.Employee;
import com.newgen.ojt.beans.UserDetail;
import com.newgen.ojt.dao.UserDao;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserDao userDao;

	@Override
	public boolean createUser(UserDetail userDetail) {
		// TODO Auto-generated method stub
		return userDao.createUser(userDetail);
	}

	@Override
	public UserDetail getUserById(int userId) {
		// TODO Auto-generated method stub
		return userDao.getUserById(userId);
	}

	@Override
	public boolean deleteUserById(int userId) {
		// TODO Auto-generated method stub
		return userDao.deleteUserById(userId);
	}

	@Override
	public List<UserDetail> fetchAllUser() {
		// TODO Auto-generated method stub
		return userDao.fetchAllUser();
	}

	@Override
	public boolean updateUser(UserDetail userDetail) {
		// TODO Auto-generated method stub
		return userDao.updateUser(userDetail);
	}

	@Override
	public List<Employee> fetchAllEmployee() {
		System.out.println("ph : ");
		// TODO Auto-generated method stub
		return userDao.fetchAllEmployee();
	}

	@Override
	public boolean createEmployee(Employee employee) {
		// TODO Auto-generated method stub
		return userDao.createEmployee(employee);
	}

	@Override
	public Employee getEmployeeById(Long id) {
		// TODO Auto-generated method stub
		return userDao.getEmployeeById(id);
	}

	@Override
	public boolean deleteEmployessById(Long id) {
		// TODO Auto-generated method stub
		return userDao.deleteEmployessById(id);
	}

}
