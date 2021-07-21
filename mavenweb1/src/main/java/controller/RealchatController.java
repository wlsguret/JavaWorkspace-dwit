package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RealchatController {

	@RequestMapping("/realchat")
	public ModelAndView realchat() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("section", "/realchat/realchat.jsp");
		mv.setViewName("/index");
		return mv;
	}
	
}
