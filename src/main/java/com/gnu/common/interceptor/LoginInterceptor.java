package com.gnu.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gnu.app.HomeController;
import com.gnu.app.vo.Member;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("session check===================");
		//요청의 세션이 존재하지않으면 세션생성 X
		HttpSession session = request.getSession(false);
		
		if(session == null) {
			System.out.println("세션없음.");
			return false;
		}
		
		Member member = (Member) session.getAttribute("member");
		
		if(member == null) {
			System.out.println("member세션없음");
			response.sendRedirect(request.getContextPath()+"/home/loginForm.do");
			return false;
		}
		
		
		return true;
	}
	

}
