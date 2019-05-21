package com.newgen.ojt.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.newgen.ojt.beans.UserDetail;
import com.newgen.ojt.form.UserForm;
import com.newgen.ojt.services.UserService;

@RestController
public class UserApi {
	
	@Autowired
	UserService userservice;
	
	@RequestMapping("/api/shabby")
	public String shabby() {
		return "Calling Rest API ";
	}
	
	@RequestMapping(value={"/createUserUsingApi"}, method=RequestMethod.POST)
	public ResponseEntity<?> createUserUsingApi(@ModelAttribute("userForm") UserForm userForm, HttpServletRequest request) throws Exception 
	{
		Map<String,Object> map=new HashMap<String,Object>();
		List<Map<String,Object>> list=new ArrayList<>();

		UserDetail userDetail = new UserDetail();
		userDetail.setFirst_name(userForm.getFirst_name());
		userDetail.setLast_name(userForm.getLast_name());
		userDetail.setRole(userForm.getRole());
		userDetail.setEmail(userForm.getEmail());
		userDetail.setPassword(userForm.getPassword());
		userDetail.setContact_number(userForm.getContact_number());
		userDetail.setEnabled(true);
		boolean done = userservice.createUser(userDetail);
		if (done)
		{
			map.put("success",1);
			map.put("message","success");
			list.add(map);
		}
		else
		{
			map.put("success",0);
			map.put("message","error");
			list.add(map);	
		}
		return ResponseEntity.ok().body(list);
	}
	
	@RequestMapping(value={"/editUserUsingApi"}, method=RequestMethod.GET)
	public ResponseEntity<?> editUserUsingApi(@RequestParam("userId") int userId, HttpServletRequest request) throws Exception 
	{
		Map<String,Object> map=new HashMap<String,Object>();
		List<Map<String,Object>> list=new ArrayList<>();
		UserDetail user = userservice.getUserById(userId);
		
		if(user.getId()>0)
		{
			map.put("userDetail", user);
			map.put("success",1);
			map.put("message","success");
			System.out.println("fName : "+user.getFirst_name());
			list.add(map);
		}
		else
		{
			map.put("success",0);
			map.put("message","error");
			list.add(map);	
		}
		
		return ResponseEntity.ok().body(list);

		
	}

	@RequestMapping(value={"/fetchAllUsingApi"}, method=RequestMethod.GET)
	public ResponseEntity<?> fetchAllUsingApi(HttpServletRequest request) throws Exception 
	{
		Map<String,Object> map=new HashMap<String,Object>();
		List<Map<String,Object>> list=new ArrayList<>();
		List<UserDetail> user = userservice.fetchAllUser();
							
		if(user.size()>0)
		{
			map.put("userlist", user);
			map.put("success",1);
			map.put("message","success");
			list.add(map);
		}
		else
		{
			map.put("success",0);
			map.put("message","error");
			list.add(map);	
		}
		
		return ResponseEntity.ok().body(list);
	}
	
	@RequestMapping(value={"/deleteUserUsingApi"}, method=RequestMethod.GET)
	public ResponseEntity<?> deleteUserUsingApi(@RequestParam("userId") int userId,HttpServletRequest request) throws Exception 
	{
		Map<String,Object> map=new HashMap<String,Object>();
		List<Map<String,Object>> list=new ArrayList<>();
			boolean done = userservice.deleteUserById(userId);
			List<UserDetail> user = userservice.fetchAllUser();
		if(user.size()>0)
		{
			map.put("userlist", user);
			map.put("success",1);
			map.put("message","success");
			list.add(map);
		}
		else
		{
			map.put("success",0);
			map.put("message","error");
			list.add(map);	
		}
		
		return ResponseEntity.ok().body(list);
	}
	
	@RequestMapping(value={"/updateUserUsingApi"}, method=RequestMethod.GET)
	public ResponseEntity<?> updateUserUsingApi(@ModelAttribute("userForm") UserForm userForm,HttpServletRequest request) throws Exception 
	{
		Map<String,Object> map=new HashMap<String,Object>();
		List<Map<String,Object>> list=new ArrayList<>();
		UserDetail userDetail = userservice.getUserById(userForm.getId());
		userDetail.setFirst_name(userForm.getFirst_name());
		userDetail.setLast_name(userForm.getLast_name());
		userDetail.setRole(userForm.getRole());
		userDetail.setEmail(userForm.getEmail());
		userDetail.setPassword(userForm.getPassword());
		userDetail.setContact_number(userForm.getContact_number());
		userDetail.setEnabled(true);
		boolean done = userservice.updateUser(userDetail);
		if (done)
		{
			List<UserDetail> user = userservice.fetchAllUser();
			map.put("userlist", user);
			map.put("success",1);
			map.put("message","success");
			list.add(map);
		}
		else
		{
			map.put("success",0);
			map.put("message","error");
			list.add(map);	
		}
		return ResponseEntity.ok().body(list);
	}
	
}
