package com.gzd.service;

import java.util.List;

import com.gzd.model.Person;

public interface IPersonService {

    /**
     * ����ȫ����person
     * @return
     */
    List<Person> loadPersons();
}
