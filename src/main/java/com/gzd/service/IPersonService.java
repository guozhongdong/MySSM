package com.gzd.service;

import com.gzd.model.Person;

import java.util.List;

public interface IPersonService {

    /**
     * 加载全部的person
     * @return
     */
    List<Person> loadPersons();
}
