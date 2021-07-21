package controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import data.Weather;

@Controller
public class WeatherController {
	@Autowired
	Weather weather;
	// uri -> /test -> 요구하는 파일명 test
	// -> 경로 "파일 [/WEB-INF/test.jsp]을(를) 찾을 수 없습니다."
	// dispatcher-servlet.xml 파일에서 앞뒤로 
	// 설정값을 추가하여 파일을 요구함.
	@RequestMapping("/test")
	void test() {
		System.out.println("test");
	}
	
	// 리턴받는 ModelAndView에 저장된 View 파일을 요구함.
	@RequestMapping("/test1")
	ModelAndView test1() {
		System.out.println("test1");
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("data", "test1");
		return mv;
	}
	
	// 페이지만 이동하려고 할 때는 스트링을 반환시키면 /WEB-INF/String.jsp 로 이동된다.
	@RequestMapping("/test2")
	String test2() {
		return "test2";
	}
	
	@RequestMapping("/weather")
	ModelAndView weather(HttpServletRequest request, HttpServletResponse response) {
		ServletContext context = request.getServletContext();
		context.setAttribute("context", "context"); //ServletContext = application
		HttpSession session = request.getSession();
		session.setAttribute("session", "session");
		ModelAndView mv = new ModelAndView(); // 객체 내부에 request, response 를 가지고 있음
		mv.addObject("request", "request");
		//mv.addObject("data", new Weather().getWeatherData());
		mv.addObject("data", weather.getWeatherData());
		mv.setViewName("weather");
		return mv;
	}
	
}
