package com.newgen.ojt.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.newgen.ojt.beans.UserDetail;
import com.newgen.ojt.form.UserForm;
import com.newgen.ojt.services.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userservice;
	
	@RequestMapping("/")
	public String indexPage() {
		return "index";
	}
	
	@RequestMapping("/createUser")
	public String  createUser(@ModelAttribute("userForm") UserForm userForm,HttpServletRequest request) throws IOException {
		UserDetail userDetail = new UserDetail();
		userDetail.setFirst_name(userForm.getFirst_name());
		userDetail.setLast_name(userForm.getLast_name());
		userDetail.setRole(userForm.getRole());
		userDetail.setEmail(userForm.getEmail());
		userDetail.setPassword(userForm.getPassword());
		userDetail.setContact_number(userForm.getContact_number());
		userDetail.setEnabled(true);
		boolean done = userservice.createUser(userDetail);
		if(done) {
			List<UserDetail> user = userservice.fetchAllUser();
			request.setAttribute("USERLIST", user);
		}
		return "userHome";
	}
	
	@RequestMapping("/editUser")
	public String editUser(@RequestParam("userId") int userId,HttpServletRequest request) throws IOException {
		
		UserDetail user = userservice.getUserById(userId);
		request.setAttribute("USER", user);
		return "index";
	}

	@RequestMapping("/updateUser")
	public String  updateUser(@ModelAttribute("userForm") UserForm userForm,HttpServletRequest request) throws IOException {
		UserDetail userDetail = userservice.getUserById(userForm.getId());
		userDetail.setFirst_name(userForm.getFirst_name());
		userDetail.setLast_name(userForm.getLast_name());
		userDetail.setRole(userForm.getRole());
		userDetail.setEmail(userForm.getEmail());
		userDetail.setPassword(userForm.getPassword());
		userDetail.setContact_number(userForm.getContact_number());
		userDetail.setEnabled(true);
		boolean done = userservice.updateUser(userDetail);
		if(done) {
			List<UserDetail> user = userservice.fetchAllUser();
			request.setAttribute("USERLIST", user);
		}
		return "userHome";
	}
	
	@RequestMapping("/deleteUser")
	public String deleteUser(@RequestParam("userId") int userId,HttpServletRequest request) throws IOException{
		boolean done = userservice.deleteUserById(userId);
		if(done) {
			List<UserDetail> user = userservice.fetchAllUser();
			request.setAttribute("USERLIST", user);
		}
		return "userHome";
	}
	
	@RequestMapping("/fetchAllUser")
	public String fetchAllUser(HttpServletRequest request) {
		List<UserDetail> user = userservice.fetchAllUser();
		request.setAttribute("USERLIST", user);
		return "userHome";
	}
	@RequestMapping("/htmlToImg")
	public String htmlToImg(HttpServletRequest request) {
		return "entrySetting";
	}
	
}
