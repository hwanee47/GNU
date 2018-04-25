package com.gnu.common;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value= "/com")
public class ComUtlController {
	
	private static final Logger logger = LoggerFactory.getLogger(ComUtlController.class);
	
	
	@RequestMapping(value = "/pageLink.do")
	public String moveToPage(@RequestParam("link") String linkPage, HttpSession session) throws Exception{
		
		String link = linkPage;
		
		if (linkPage==null || linkPage.equals(""))
		{
			link="error/Error";
		}else {
			if(link.indexOf(",")>-1){
			    link=link.substring(0,link.indexOf(","));
			}
		}
		System.out.println(link+"sdf");
		return link;
	}
	
	

	
	
	
}
