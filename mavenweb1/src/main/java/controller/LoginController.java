package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
//해당 클래스 밑에서@RequestMapping()을 만나면 "/login/"+ 로 맵핑이 된다.
public class LoginController {
	
	@RequestMapping("login")
	public ModelAndView loginform() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("section", "/login/login.jsp");
		mv.setViewName("/index");
		return mv;
	}
	
	@RequestMapping("logindo")
	public ModelAndView logindo(HttpServletRequest request) {
		System.out.println(request.getRequestURI());
		String[] arr = request.getRequestURI().split("/");
		String map = "/"+arr[1]+"/";
		String page = "loginsuccess";
		
		ModelAndView mv = new ModelAndView();
		request.getSession().setAttribute("id", "user");
		mv.setViewName(map+page);
		return mv;
	}
	
//	@RequestMapping("logindo")
//	public String logindo(HttpServletRequest request) {
//		request.getSession().setAttribute("id", "user");
//		return "/login/loginsuccess";
//	}
	
}
