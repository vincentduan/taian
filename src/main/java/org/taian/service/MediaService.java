package org.taian.service;

import java.util.List;

import org.taian.entity.Media;

public interface MediaService {
	List<Media> getMediaListByPersonID(int personid);
}
