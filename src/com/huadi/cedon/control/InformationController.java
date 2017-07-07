package com.huadi.cedon.control;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;



@Component
@RequestMapping("information")
public class InformationController extends BaseController implements Serializable  {
	private static final long serialVersionUID = 1L;

	@RequestMapping("informationview")
	public String Informationview(ModelMap map,HttpServletRequest request){
		return "information/information";
	}
	@RequestMapping("infoDetailview")
	public String InfoDetailview(ModelMap map,HttpServletRequest request){
		return "information/infoDetail";
	}
}