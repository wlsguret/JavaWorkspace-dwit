package controller.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.service.BoardService;

@Controller
public class NoticeController {

	@Autowired
	BoardService service;
	
	@RequestMapping("/notice")
	public ModelAndView notice() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Notice/notice.jsp");
		mv.addObject("list", null);
		return mv;
	}
}
