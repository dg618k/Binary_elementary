package com.huadi.cedon.control;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;



@Component
@RequestMapping("bofang")
public class bofangController extends BaseController implements Serializable  {
	private static final long serialVersionUID = 1L;

	@RequestMapping("bofangview")
	public String bofangview(ModelMap map,HttpServletRequest request){
		return "bofang/bofang";
	}
	@RequestMapping("videoview")
	public String Videoview(ModelMap map,HttpServletRequest request){
		String user_name = request.getSession().getAttribute("name").toString();
		map.put("user", user_name);
		return "bofang/video";
	}
}