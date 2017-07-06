package com.huadi.cedon.control;

import java.io.Serializable;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huadi.cedon.jdbc.dao.BaseDao;

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
	
	//个人信息显示及修改
   @RequestMapping("gerenxinxixiugai")
	public String gerenxinxixiugai(ModelMap map,HttpServletRequest request){
		String user_id = request.getSession().getAttribute("id").toString();
		String sql = "select * from user where id = ?";
		Map<String, Object> map1 = BaseDao.findOne(sql, user_id);
		map.put("user_name", map1.get("name"));
		map.put("user_signal", map1.get("signal"));
		map.put("user_sex", map1.get("sex"));
		map.put("user_tele", map1.get("tele"));
		map.put("user_money", map1.get("money"));
		map.put("user_url", map1.get("head_url"));
		return "personal_center/gerenxinxi/gerenxinxixiugai";
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