package org.taian.service;

import java.util.List;

import org.taian.entity.Track;

public interface TrackService {
	
	List<Track> searchTrack(int personid, String date, String flight, String source, String destination, String hotel);
	
}
