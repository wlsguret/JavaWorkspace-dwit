package controller.menu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MenuController {
	
	@RequestMapping("/home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	@RequestMapping("/artist")
	public ModelAndView artist() {
		ModelAndView mv = new ModelAndView("Menu/Artist/artist");
		return mv;
	}
	
	@RequestMapping("/notice")
	public ModelAndView notice() {
		ModelAndView mv = new ModelAndView("Menu/Notice/notice");
		return mv;
	}
	
	@RequestMapping("/audition")
	public ModelAndView audition() {
		ModelAndView mv = new ModelAndView("Menu/Audition/audition");
		return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("Menu/Login/login");
		return mv;
	}
}
