package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MenuController {
	
	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Home/home.jsp");
		return mv;
	}
	
	@RequestMapping("/home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Home/home.jsp");
		return mv;
	}
	
//	@RequestMapping("/artist")
//	public ModelAndView artist() {
//		ModelAndView mv = new ModelAndView("index");
//		mv.addObject("main", "/Artist/artist.jsp");
//		return mv;
//	}

}
