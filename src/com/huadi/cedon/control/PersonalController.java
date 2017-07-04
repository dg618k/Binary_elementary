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
	@RequestMapping("gerenxiaoxiview")
	public String Gerenxiaoxi(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenxiaoxi/gerenxiaoxi";
	}
	
	@RequestMapping("gerenshoucangview")
	public String gerenshoucang(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenshoucang";
		}
	@RequestMapping("gerenxinxixiugaiview")
	public String gerenxinxixiugai(ModelMap map,HttpServletRequest request){
		 
		return "personal_center/gerenxinxi/gerenxinxixiugai";
		}
	@RequestMapping("gerenxinxixiugai_qianmingview")
	public String gerenxinxixiugai_qianming(ModelMap map,HttpServletRequest request){
	
	return "personal_center/gerenxinxi/gerenxinxixiugai_qianming";
	}
	@RequestMapping("gerenxinxixiugai_touxiangview")
	public String gerenxinxixiugai_touxiang(ModelMap map,HttpServletRequest request){
	 
	return "personal_center/gerenxinxi/gerenxinxixiugai_touxiang";
	}
	@RequestMapping("mimaxiugaiview")
	public String mimaxiugai(ModelMap map,HttpServletRequest request){
	 
	return "personal_center/gerenxinxi/mimaxiugai";
	}
	@RequestMapping("nichengxiugaiview")
	public String nichengxiugai(ModelMap map,HttpServletRequest request){
	 
	return "personal_center/gerenxinxi/nichengxiugai";
	}
	@RequestMapping("qianmingxiugaiview")
	public String qianmingxiugai(ModelMap map,HttpServletRequest request){
	
	return "personal_center/gerenxinxi/qianmingxiugai";
	}
	@RequestMapping("touxiangxiugaiview")
	public String touxiangxiugai(ModelMap map,HttpServletRequest request){
	
	return "personal_center/gerenxinxi/touxiangxiugai";
	}
}