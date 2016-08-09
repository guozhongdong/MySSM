package com.gzd.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		System.out.println("≤‚ ‘”√ªß");
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
	@RequestMapping("demouser1")
	@ResponseBody
	public String    queryUser1(Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		List<E_user> userdemos = userService.loadQueryUser();
		JSONArray array = new JSONArray();
		Map<String,Object> rstMap = new HashMap<String,Object>();
		rstMap.put("rows", userdemos);
		rstMap.put("total", 5);
		 /* for(E_user user:userdemos){  
	             JSONObject jsonObject = new JSONObject();  
	             jsonObject.put("id",user.getId()) ;  
	             jsonObject.put("username",user.getUsername()); 
	             jsonObject.put("password",user.getPassword()); 
	             jsonObject.put("sex",user.getSex()); 	             
	             jsonObject.put("age", user.getAge());  
	             jsonObject.put("phone",user.getPhone());  
	             jarray.add
	            // jarray.a
	        } */
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("rows", userdemos);
		jsonObject.put("total", 5);
		//array.put(rstMap);
		System.out.println(jsonObject.toString());
	
       // model.addAttribute("rows111", array);
       
    //    return "pages/main/showUser";
	//	return new ModelAndView("pages/main/showUser", rstMap);
     //   return JSONObject.fromObject(rstMap);
	//	return "pages/main/showUser";
        return jsonObject.toString();
        
	}
	
}
