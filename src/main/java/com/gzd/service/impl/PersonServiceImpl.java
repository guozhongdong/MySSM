package com.gzd.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gzd.dao.PersonMapper;
import com.gzd.model.Person;
import com.gzd.service.IPersonService;

@Service("personService")
public class PersonServiceImpl implements IPersonService {
    
    private PersonMapper personMapper;

    public PersonMapper getPersonMapper() {
        return personMapper;
    }
    @Autowired
    public void setPersonMapper(PersonMapper personMapper) {

        this.personMapper = personMapper;
    }

    public List<Person> loadPersons() {
        return personMapper.queryAll();
    }
    public static void main(String[] args) {
    	PersonServiceImpl p = new PersonServiceImpl();
    	List<Person> list = p.loadPersons();
    	for(int i=0;i<list.size();i++){
    		System.out.println(list.get(i));
    	}
    	
    	
	}
}
