package com.gzd.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gzd.model.Person;

@Controller
public class LoginAction {

	@RequestMapping("/pages/main/login")
	public String login(Person person){
		System.out.println(person.getName());
		System.out.println(person.getAge());
		System.out.println("µÇÂ½³É¹¦£¡");
		return "/pages/main/loginSuccess";
	}
	
}
