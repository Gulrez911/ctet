package com.ctet.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ctet.data.User;
import com.ctet.services.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public ModelAndView listUsers(HttpServletResponse response, HttpServletRequest request) throws Exception {
//		User user = (User) request.getSession().getAttribute("user");
//		List<User> users = userService.findByCompany(user.getCompanyId());
		ModelAndView mav = new ModelAndView("add_user");
//		mav.addObject("users", users);
		User usr = new User();
//		usr.setCompanyId(user.getCompanyId());
//		usr.setCompanyName(user.getCompanyName());
		mav.addObject("usr", usr);
		return mav;
	}

	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public ModelAndView saveUser(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("usr") User usr) {
//		User user = (User) request.getSession().getAttribute("user");
		ModelAndView mav = new ModelAndView("add_user");
//		usr.setCompanyId(user.getCompanyId());
//		usr.setCompanyName(user.getCompanyName());
		userService.saveOrUpdate(usr);
//		usr = new User();
//		usr.setCompanyId(user.getCompanyId());
//		usr.setCompanyName(user.getCompanyName());
//		mav.addObject("usr", usr);
//		List<User> users = userService.findByCompany(user.getCompanyId());
//		mav.addObject("users", users);
		return mav;
	}

//	@RequestMapping(value = "/listUsers", method = RequestMethod.GET)
//	public ModelAndView listUsers(HttpServletResponse response, HttpServletRequest request) throws Exception {
//		User user = (User) request.getSession().getAttribute("user");
//		List<User> users = userService.findByCompany(user.getCompanyId());
//		ModelAndView mav = new ModelAndView("add_user");
//		mav.addObject("users", users);
//		User usr = new User();
//		usr.setCompanyId(user.getCompanyId());
//		usr.setCompanyName(user.getCompanyName());
//		mav.addObject("usr", usr);
//		return mav;
//	}
}
