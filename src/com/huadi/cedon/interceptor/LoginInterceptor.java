package com.huadi.cedon.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.net.aso.s;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object obj) throws Exception {
		
			HttpSession session=request.getSession();
			Object loginname=session.getAttribute("loginname");
			String DQurl = request.getRequestURI();
			System.out.println("DQurl="+DQurl);
			if(DQurl.contains("/scdx/login/")){
				return true;
			}
			if(DQurl.contains("/scdx/static/")){
				return true;
			}
			if(loginname == null) {
				response.sendRedirect(
					request.getContextPath() + "/login/loginveiw.do");
				return false;
			} else {
				return true;
			}
		
	}

}
