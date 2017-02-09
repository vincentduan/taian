package org.taian.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.taian.dao.MediaDao;
import org.taian.entity.Media;
import org.taian.service.MediaService;

@Service
public class MediaServiceImpl implements MediaService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	//注入Service依赖
	@Autowired
	private MediaDao mediaDao;
	


	@Override
	public List<Media> getMediaListByPersonID(int personid) {
		// TODO Auto-generated method stub
		return null;
	}

}
