package video.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import video.model.VideoVO;

@Service("videoservice")
public class videoServiceImpl implements VideoService {

	@Autowired
	VideoMapper mapper;
	
	@Override
	public List<VideoVO> videoList() {
		return mapper.videoList();
	}

}
