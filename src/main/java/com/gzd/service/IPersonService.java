package com.gzd.service;

import com.gzd.model.Person;

import java.util.List;

public interface IPersonService {

    /**
     * ����ȫ����person
     * @return
     */
    List<Person> loadPersons();
}
