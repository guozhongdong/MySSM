package com.gzd.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.gzd.model.E_user;
import com.gzd.model.Person;
import com.gzd.service.IPersonService;
import com.gzd.service.UserService;


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
		//List<E_user> userdemos = userService.loadQueryUser();
		/*for(E_user e :userdemos){
			System.out.println(e.getId());
			System.out.println(e.getPassword());
			System.out.println(e.getUsername());
		}
		
        model.addAttribute("userdemo", userdemos);*/
        return "pages/main/showUser";
		
	}
	@ResponseBody
	@RequestMapping(value="demouser1", produces={"application/json;charset=UTF-8"})
	public String queryUser1(E_user e_user){
		//解决中文乱码
		List<E_user> userdemos = userService.loadQueryUser(e_user);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("rows", userdemos);
		jsonObject.put("total", 5);
		//array.put(rstMap);
		System.out.println();
		System.out.println(jsonObject.toString());
        return jsonObject.toString();
        
	}
	@RequestMapping(value="insertUser")
	public void  insertUser(E_user e_user,HttpServletRequest req,HttpServletResponse res){
		//String name = request.getParameter("username");
		//System.out.println(req.getParameter("username"));
		//System.out.println(req.getParameter("password"));
		userService.inserInto(e_user);
	//	Map<String, String> map = new HashMap<String, String>();
	//	map.put("result", "1");
	//	map.put("errorMsg", "保存失败！");
		try {
			res.getWriter().print(1);    //保存成功 返回页面1
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("插入数据成功！");
		

	}
	
	@ResponseBody
	@RequestMapping(value="deleteUser", produces={"application/json;charset=UTF-8"})
	public String deleteUser(int id){
		userService.deleteOne(id);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("success", true);
	//	jsonObject.put("total", 5);
		//array.put(rstMap);
		System.out.println(jsonObject.toString());
        return jsonObject.toString();
		
	//	System.out.println(id);
	//	System.out.println("我是删除");
	}
	
	@RequestMapping(value="updateUser")
	public void updateUser(E_user e_user){
		
		userService.updateOne(e_user);
		System.out.println(e_user.getId());
		System.out.println("修改成功！");
		
	}
	
	
	
	
	
	
	
	
}
