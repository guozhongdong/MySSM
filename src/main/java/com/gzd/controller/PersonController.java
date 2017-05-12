package com.gzd.controller;

import com.gzd.model.Person;
import com.gzd.service.IPersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/personController")
public class PersonController {
    
    private IPersonService personService;
    
    public IPersonService getPersonService() {
        return personService;
    }

    @Autowired
    public void setPersonService(IPersonService personService) {
        this.personService = personService;
    }
    /*
     * add by 2016年8月4日16:43:58
     * */
    @RequestMapping("/test")
    public String test(){
    	System.out.println("测试成功！");
    	return "sert";
    }
    @RequestMapping("/showPerson")
    public String showPersons(Model model){
        List<Person> persons = personService.loadPersons();

        model.addAttribute("persons", persons);
        return "showperson";
    }
}
