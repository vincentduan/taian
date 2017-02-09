package org.taian.dao;

import java.util.List;

import org.taian.entity.Person;

public interface PersonDao {
	
	

	List<Person> queryAll();

	Person queryById(int id);
	
	
	
}
