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
	@RequestMapping("gerenxiaoxi")
	public String Gerenxiaoxi(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenxiaoxi/gerenxiaoxi";
	}
	
	@RequestMapping("shipinshoucang")
	public String shipinshoucang(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenshoucang/shipinshoucang";
		}
	@RequestMapping("manhuashoucang")
	public String manhuashoucang(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenshoucang/manhuashoucang";
		}
	@RequestMapping("xiaoxi_aitewo")
	public String xiaoxi_aitewo(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenxiaoxi/xiaoxi_aitewo";
	}
	@RequestMapping("xiaoxi_dianzan")
	public String xiaoxi_dianzan(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenxiaoxi/xiaoxi_dianzan";
	}
	@RequestMapping("xiaoxi_sixin")
	public String xiaoxi_sixin(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenxiaoxi/xiaoxi_sixin";
	}

	@RequestMapping("xiaoxi_xitong")
	public String xiaoxi_xitong(ModelMap map,HttpServletRequest request){
		 
		return "personal_center/gerenxiaoxi/xiaoxi_xitong";
	}
   @RequestMapping("gerenxinxixiugai")
	public String gerenxinxixiugai(ModelMap map,HttpServletRequest request){
		 
		return "personal_center/gerenxinxi/gerenxinxixiugai";
		}
	

	@RequestMapping("gerenxinxixiugai_qianming")
	public String gerenxinxixiugai_qianming(ModelMap map,HttpServletRequest request){
	
	return "personal_center/gerenxinxi/gerenxinxixiugai_qianming";
	}
	@RequestMapping("gerenxinxixiugai_touxiang")
	public String gerenxinxixiugai_touxiang(ModelMap map,HttpServletRequest request){
	 
	return "personal_center/gerenxinxi/gerenxinxixiugai_touxiang";
	}
	@RequestMapping("mimaxiugai")
	public String mimaxiugai(ModelMap map,HttpServletRequest request){
	 
	return "personal_center/gerenxinxi/mimaxiugai";
	}
	@RequestMapping("nichengxiugai")
	public String nichengxiugai(ModelMap map,HttpServletRequest request){
	 
	return "personal_center/gerenxinxi/nichengxiugai";
	}
	@RequestMapping("qianmingxiugai")
	public String qianmingxiugai(ModelMap map,HttpServletRequest request){
	
	return "personal_center/gerenxinxi/qianmingxiugai";
	}
	@RequestMapping("touxiangxiugai")
	public String touxiangxiugai(ModelMap map,HttpServletRequest request){
	
	return "personal_center/gerenxinxi/touxiangxiugai";
	}

}