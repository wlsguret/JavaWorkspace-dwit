package video.service;

import java.util.List;

import video.model.VideoVO;

public interface VideoService {

	public List<VideoVO> videoList();
	public int videoInsert(VideoVO video);
}
