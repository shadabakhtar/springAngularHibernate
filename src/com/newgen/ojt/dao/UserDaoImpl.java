package com.newgen.ojt.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.newgen.ojt.beans.Employee;
import com.newgen.ojt.beans.UserDetail;

@Repository
@SuppressWarnings("unchecked")
public class UserDaoImpl implements UserDao{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public boolean createUser(UserDetail userDetail) {
		boolean done = false;
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(userDetail);
			done = true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return done;
	}

	@Override
	@Transactional
	public UserDetail getUserById(int userId) {
		UserDetail user = null;
		try {
			
			TypedQuery<UserDetail> query = sessionFactory.getCurrentSession().createQuery("from UserDetail where id=:userId");
			query.setParameter("userId", userId);
			user = query.getSingleResult();
		} catch (Exception ex) {
			ex.getCause();	
			}
		
		return user;
	}

	@Override
	@Transactional
	public boolean deleteUserById(int userId) {
		boolean done = false;
		try {
			
			TypedQuery<UserDetail> query = sessionFactory.getCurrentSession().createQuery("delete from UserDetail where id=:userId");
			query.setParameter("userId", userId);
			query.executeUpdate();
			done = true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return done;
	}

	@Override
	@Transactional
	public List<UserDetail> fetchAllUser() {
		List<UserDetail> userDetails = null;
		
		try {
			TypedQuery<UserDetail> query = sessionFactory.getCurrentSession().createQuery("from UserDetail where enabled=true");
			userDetails = query.getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		// TODO Auto-generated method stub
		return userDetails;
	}

	@Override
	@Transactional
	public boolean updateUser(UserDetail userDetail) {
		boolean done = false;
		try {
			sessionFactory.getCurrentSession().update(userDetail);
			done = true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		
		return done;
	}

	@Override
	@Transactional
	public List<Employee> fetchAllEmployee() {
     List<Employee> userDetails = null;
		
		try {
			TypedQuery<Employee> query = sessionFactory.getCurrentSession().createQuery("from Employee");
			userDetails = query.getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		// TODO Auto-generated method stub
		return userDetails;
	}

	@Override
	@Transactional
	public boolean createEmployee(Employee employee) {
		boolean done = false;
		try {
			sessionFactory.getCurrentSession().save(employee);
			done = true;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return done;
	}

	@Override
	@Transactional
	public Employee getEmployeeById(Long id) {
		Employee user = null;
		try {
			
			TypedQuery<Employee> query = sessionFactory.getCurrentSession().createQuery("from Employee where id=:id");
			query.setParameter("id", id);
			user = query.getSingleResult();
		} catch (Exception ex) {
			ex.getCause();	
			}
		
		return user;
	}

	@Override
	@Transactional
	public boolean deleteEmployessById(Long id) {
		boolean done = false;
		try {
			
			TypedQuery<UserDetail> query = sessionFactory.getCurrentSession().createQuery("delete from Employee where id=:id");
			query.setParameter("id", id);
			query.executeUpdate();
			done = true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return done;
	}

}
