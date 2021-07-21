package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MapController {

	@RequestMapping("/map")
	public ModelAndView map() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("section", "/home/section.jsp");
		mv.setViewName("/index");
		return mv;
	}
	
}
