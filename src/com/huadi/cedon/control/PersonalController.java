package com.huadi.cedon.control;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("personal_center")
public class PersonalController extends BaseController implements Serializable {
	private static final long serialVersionUID = 1L;

	@RequestMapping("historyview")
	public String historyView(ModelMap map,HttpServletRequest request){
		return "personal_center/view_history";
	}
	@RequestMapping("friendview")
	public String friendView(ModelMap map, HttpServletRequest request){
		return "personal_center/friend";
	}
	@RequestMapping("ownVideoview")
	public String ownVideoview(ModelMap map, HttpServletRequest request){
		return "personal_center/ownVideo";
	}
	@RequestMapping("perSpaceview")
	public String perSpaceview(ModelMap map, HttpServletRequest request){
		return "personal_center/personal_space";
	}
	@RequestMapping("uploadview")
	public String uploadView(ModelMap map, HttpServletRequest request){
		return "personal_center/upload";

	}
	
}