package org.taian.dao;

import java.util.List;

import org.taian.entity.Media;

public interface MediaDao {
	
	List<Media> getMediaListByPersonID(int personid);
	
}
