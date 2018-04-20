package com.gnu.app;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gnu.app.service.LoginService;
import com.gnu.app.vo.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value= "/home")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/** LoginService */
	@Resource(name = "loginService")
	private LoginService loginService;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String test(HttpServletRequest request) throws Exception{
		
		System.out.println("dddd");
		
		return "member/loginForm";
	}
	
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(HttpServletRequest request, @ModelAttribute("member") Member member) throws Exception{
		HttpSession session = (HttpSession) request.getSession();
		
		//System.out.println(session);
		
		String ip = request.getHeader("X-Forwarded-For");

		if (ip == null) {
            ip = request.getHeader("Proxy-Client-IP");
            logger.info(">>>> Proxy-Client-IP : " + ip);
        }
        if (ip == null) {
            ip = request.getHeader("WL-Proxy-Client-IP"); // 웹로직
            logger.info(">>>> WL-Proxy-Client-IP : " + ip);
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_CLIENT_IP");
            logger.info(">>>> HTTP_CLIENT_IP : " + ip);
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
            logger.info(">>>> HTTP_X_FORWARDED_FOR : " + ip);
        }
        if (ip == null) {
            ip = request.getRemoteAddr();
        }

	        
	    System.out.println(ip+"에서 접속"); 
        
        
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("ID", member.getId());
        map.put("PWD", member.getPwd());
        
		boolean logincheck = loginService.login(map);
		String returnURL = "";
		if(logincheck)
		{
			System.out.println("로그인성공");
			session.setAttribute("member", member);
			returnURL = "home";
		}else {
			System.out.println("로그인실패");
			returnURL = "member/loginForm";
		}
		
		return returnURL;
	}
	
	
	
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public void register(HttpServletRequest request, @ModelAttribute("info") Member member) throws Exception{
		
		System.out.println(member.getName());
		System.out.println(member.getId());
		System.out.println(member.getPwd());
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("ID", member.getId());
		map.put("PWD", member.getPwd());
		map.put("NAME", member.getName());
		
		loginService.register(map);
		
	}
	
	
	

	
	
	
}
