package com.gnu.app;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

	

	@RequestMapping(value = "/loginForm.do")
	public String loginForm() throws Exception{
		return "member/loginForm";
	}
	
	

	
	@RequestMapping(value = "/login.do")
	public String loginCheck(HttpServletRequest request, @ModelAttribute("member") Member member, RedirectAttributes redirectAttr) throws Exception{
		
        String returnURL = "";
        
        HashMap<String, String> map = new HashMap<String, String>();
        
    	map.put("ID", member.getId());
        map.put("PWD", member.getPwd());

        
        HashMap<String, String> resultMap = loginService.login(map);
		
		if(Integer.parseInt(resultMap.get("CNT"))==1)
		{
			System.out.println("로그인성공");
			member.setAuth(resultMap.get("AUTH"));
			
			request.getSession().setAttribute("member", member);
			
			redirectAttr.addFlashAttribute("member", member);
			
			returnURL = "redirect:/com/pageLink.do?link=main";
		}else {
			System.out.println("로그인실패");
			returnURL = "member/loginForm";
		}
		
		return returnURL;
	}
	
	
	
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public String register(HttpServletRequest request, @ModelAttribute("info") Member member) throws Exception{
		
		System.out.println(member.getName());
		System.out.println(member.getId());
		System.out.println(member.getPwd());
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("ID", member.getId());
		map.put("PWD", member.getPwd());
		map.put("NAME", member.getName());
		
		loginService.register(map);
		
		return "member/loginForm";
	}
	
	
	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session) throws Exception{
		session.invalidate();
		return "member/loginForm";
	}
	
	
	@RequestMapping(value = "/arduino.do", method = RequestMethod.GET)
	public void arduino(HttpServletRequest request) throws Exception{
		
		System.out.println("arduino");
	}
	
	
	

	
	
	
}
