package com.gzd.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gzd.model.E_user;
import com.gzd.model.Person;
import com.gzd.service.IPersonService;
import com.gzd.service.UserService;
import com.sun.media.sound.JavaSoundAudioClip;

@Controller
public class E_userController {

	private IPersonService personService;
    
    public IPersonService getPersonService() {
        return personService;
    }

    @Autowired
    public void setPersonService(IPersonService personService) {
        this.personService = personService;
    }
	
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}
	
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping("/users")
	public String QueryAll(Model model){
		System.out.println("测试用户");
		List<Person> users = personService.loadPersons();
		for(int i =0;i<users.size();i++){
        	System.out.println(users.get(i));
        }
        model.addAttribute("users", users);
        return "pages/main/showUser";
		
	}
	@RequestMapping("/demouser")
	public String queryUser(Model model){
		List<E_user> userdemos = userService.loadQueryUser();
		for(E_user e :userdemos){
			System.out.println(e.getId());
			System.out.println(e.getPassword());
			System.out.println(e.getUsername());
		}
		
        model.addAttribute("userdemo", userdemos);
        return "pages/main/showUser";
		
	}
	@ResponseBody
	@RequestMapping(value="demouser1", produces={"application/json;charset=UTF-8"})
	public String    queryUser1(){
		//解决中文乱码
		List<E_user> userdemos = userService.loadQueryUser();
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("rows", userdemos);
		jsonObject.put("total", 5);
		//array.put(rstMap);
		System.out.println(jsonObject.toString());
        return jsonObject.toString();
        
	}
	
}
