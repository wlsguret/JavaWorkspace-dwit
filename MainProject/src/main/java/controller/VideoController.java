package controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import video.service.VideoService;

@Controller
public class VideoController {

	@Resource(name = "videoservice")
	VideoService service;
	
	@RequestMapping("/video")
	public ModelAndView video() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Video/video.jsp");
		mv.addObject("mvlist", service.videoList());
		return mv;
	}
}
