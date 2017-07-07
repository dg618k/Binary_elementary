package com.huadi.cedon.control;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Component
@RequestMapping("manhuayuedu")
public class manhuayuedu extends BaseController implements Serializable  {
	private static final long serialVersionUID = 1L;

	@RequestMapping("manhuayueduview")
	public String historyView(ModelMap map,HttpServletRequest request){
		return "manhuayuedu/manhuayuedu";
	}
}