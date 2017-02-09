package org.taian.service;

import java.util.List;

import org.taian.entity.Media;
import org.taian.entity.Person;

/**
 * @author duandingyang
 *
 */
public interface PersonService {
	
	/**
	 * 查询所有
	 * @return
	 */
	List<Person> getPersonList();
	
	Person getById(int id);
	
	
	
}
