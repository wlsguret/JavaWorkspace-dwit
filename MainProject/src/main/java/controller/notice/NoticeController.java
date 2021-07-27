package controller.notice;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import board.model.BoardVO;
import board.service.BoardService;

@Controller
public class NoticeController {

	@Resource(name = "noticeService")
	BoardService Nservice;
	@Resource(name = "communityService")
	BoardService Cservice;
	
	@RequestMapping("/notice")
	public ModelAndView notice() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("main", "/Notice/notice.jsp");
		mv.addObject("noticeList", Nservice.boardList());
		mv.addObject("communityList", Cservice.boardList());
		return mv;
	}
	
	@RequestMapping("/boardInsert")
	public String boardInsert(HttpServletRequest request, String boardType) {
		request.setAttribute("boardType", boardType);
		BoardVO board = new BoardVO();
		if(boardType.equals("notice")) {
			Nservice.boardInsert(board);
		} else if(boardType.equals("community")) {
			Cservice.boardInsert(board);
		} else {
			System.out.println("boardInsert Fail [NoticeController]");
		}
		
		return "forward:notice";
	}
}
