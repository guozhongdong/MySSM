package com.gzd.dao;

import com.gzd.model.Person;

import java.util.List;

public interface PersonMapper {
    /**
     * ����һ����¼
     * @param person
     */
    void insert(Person person);
    
    /**
     * ��ѯ����
     * @return
     */
    List<Person> queryAll();
}
