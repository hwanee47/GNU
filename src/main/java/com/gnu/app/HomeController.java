package com.gnu.app;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private static final Logger logger = Logger.getLogger(HomeController.class);
	/** LoginService */
	@Resource(name = "loginService")
	private LoginService loginService;

	

	@RequestMapping(value = "/loginForm.do")
	public String loginForm() throws Exception{
		return "member/loginForm";
	}
	
	

	
	/*@RequestMapping(value = "/login.do")
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
	*/
	
	
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public String register(HttpServletRequest request, @ModelAttribute("info") Member member) throws Exception{
		
		
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
	
	
	@RequestMapping(value = "/searchMemberList.do")
	public String searchMemberList(ModelMap model) throws Exception{
		logger.debug("TEST");
		logger.info("TEST");
		logger.warn("TEST");
		logger.error("TEST");
		logger.fatal("TEST");
		System.out.println("sysout!");
		/*사용자 조회*/
		List<HashMap<String,String>> list = loginService.searchMemberList();
		
		model.addAttribute("memberList", list);
		
		return "member/manageMember";
	}
	
	
	@RequestMapping(value = "/arduino.do", method = RequestMethod.GET)
	public void arduino(HttpServletRequest request) throws Exception{
		
		System.out.println("arduino");
	}
	
	
	

	
	
	
}
