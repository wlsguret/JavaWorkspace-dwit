package controller.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeController {

	@RequestMapping("/notice")
	public ModelAndView notice() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Notice/notice.jsp");
		return mv;
	}
}
