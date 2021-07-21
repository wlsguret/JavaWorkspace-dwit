package controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import board.dao.BoardDAO;

@Controller
public class BoardController {
	
//	@Autowired
//	BoardDAO dao;
	@Resource(name = "boardservice")
	BoardService service;
	
	@RequestMapping("/board")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("pageboard",service.pagemove(1,0));
//		System.out.println(dao.pagemove(1, 0));
		mv.addObject("requestpage", 1);
		mv.addObject("section", "/board/list.jsp");
		mv.setViewName("/index");
		return mv;
	}
	
	@RequestMapping("/board/testform")
	public String testfrom() {
		return "/board/testform";
	}
	
	@RequestMapping(value = "/board/test", produces = "application/json; charset=utf-8" )
	@ResponseBody
	public String test(String p) {
		System.out.println("p:"+p);
		return p;
	}
	
	@RequestMapping("/board/searchList")
	public ModelAndView searchList(String field, String search, int requestPage) {
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("pageboard", service.searchlist(field, search));
		mv.addObject("requestPage", requestPage);
		mv.addObject("section", "/board/list.jsp");
		return mv;
	}
	
//	@RequestMapping("/")
//	public ModelAndView list() {
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("pageboard",dao.pagemove(1,0));
//		System.out.println(dao.pagemove(1, 0));
//		mv.addObject("requestpage", 1);
//		mv.addObject("section", "/board/list.jsp");
//		mv.setViewName("/index");
//		return mv;
//	}
	
}
