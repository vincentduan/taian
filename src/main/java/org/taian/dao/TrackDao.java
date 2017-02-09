package org.taian.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.taian.entity.Track;

public interface TrackDao {
	
	List<Track> search(@Param("personid")int personid, @Param("date")String date, @Param("flight")String flight, @Param("source")String source, @Param("destination")String destination, @Param("hotel")String hotel);
	
}
