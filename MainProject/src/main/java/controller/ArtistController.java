package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArtistController {

	@RequestMapping("/artist")
	public ModelAndView artist() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Artist/artist.jsp");
		return mv;
	}
	
	@RequestMapping("/detail")
	public ModelAndView detail(String artist) {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Artist/"+artist+".jsp");
		mv.addObject("status", "artist");
		return mv;
	}
}
