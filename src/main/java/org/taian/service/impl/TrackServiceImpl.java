package org.taian.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.taian.dao.TrackDao;
import org.taian.entity.Track;
import org.taian.service.TrackService;

@Service
public class TrackServiceImpl implements TrackService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	//注入Service依赖
	@Autowired
	private TrackDao trackDao;
	
	public List<Track> searchTrack(int personid, String date, String flight,
			String source, String destination, String hotel) {
		// TODO Auto-generated method stub
		
		return trackDao.search(personid, date, flight, source, destination, hotel);
	}

}
