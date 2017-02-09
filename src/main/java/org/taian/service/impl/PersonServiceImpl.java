package org.taian.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.taian.dao.PersonDao;
import org.taian.entity.Person;
import org.taian.service.PersonService;

@Service
public class PersonServiceImpl implements PersonService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	//注入Service依赖
	@Autowired
	private PersonDao personDao;
	
	@Override
	public List<Person> getPersonList() {
		// TODO Auto-generated method stub
		return personDao.queryAll();
	}

	@Override
	public Person getById(int id) {
		// TODO Auto-generated method stub
		return personDao.queryById(id);
	}



}
