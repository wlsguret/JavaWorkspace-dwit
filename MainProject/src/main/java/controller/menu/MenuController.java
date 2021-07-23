package controller.menu;

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
	
	@RequestMapping("/artist")
	public ModelAndView artist() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Artist/artist.jsp");
		return mv;
	}
	
	@RequestMapping("/notice")
	public ModelAndView notice() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Notice/notice.jsp");
		return mv;
	}
	
	@RequestMapping("/audition")
	public ModelAndView audition() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Audition/audition.jsp");
		return mv;
	}
	
//	@RequestMapping("/login")
//	public ModelAndView login() {
//		ModelAndView mv = new ModelAndView("index");
//		mv.addObject("main", "/Login/login.jsp");
//		return mv;
//	}
}
