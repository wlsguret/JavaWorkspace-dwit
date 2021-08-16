package video.service;

import java.util.List;

import video.model.VideoVO;

public interface VideoMapper {

	List<VideoVO> videoList();
	int videoInsert(VideoVO video); 
}
