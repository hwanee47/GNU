package com.gnu.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gnu.app.vo.Member;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		//요청의 세션이 존재하지않으면 세션생성 X
		HttpSession session = request.getSession(false);
		
		if(session == null) {
			System.out.println("세션없음.");
			return false;
		}
		
		Member member = (Member) session.getAttribute("member");
		
		if(member == null) {
			System.out.println(request.getContextPath()+"/member/loginForm.jsp");
			response.sendRedirect(request.getContextPath()+"/login.do");
			return false;
		}
		
		return true;
	}
	

}
