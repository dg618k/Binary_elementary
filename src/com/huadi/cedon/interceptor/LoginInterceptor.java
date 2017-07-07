package com.huadi.cedon.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


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
			Object id = session.getAttribute("id");
			String DQurl = request.getRequestURI();

			if(DQurl.contains("/Binary_elementary/login/")){
				return true;
			}
			if(DQurl.contains("/Binary_elementary/index")){
				return true;
			}
			if(DQurl.contains("/Binary_elementary/static/")){
				return true;
			}
			if(id == null) {
				response.sendRedirect(
					request.getContextPath() + "/index");
				return false;
			} else {
				return true;
			}
		
	}

}
