package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IntroController {

	@RequestMapping("/intro")
	public ModelAndView intro() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("section", "/intro/intro.jsp");
		mv.setViewName("/index");
		return mv;
	}
	
}
