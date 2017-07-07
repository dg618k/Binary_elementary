package com.huadi.cedon.control;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import com.huadi.cedon.dao.recordMapper;
import com.huadi.cedon.jdbc.dao.BaseDao;

@Component
@RequestMapping("trade")
public class TradeController extends BaseController implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Resource
	private recordMapper recordMapper;
	
	@RequestMapping("tradeview")
	public String TradeVeiw(ModelMap map,HttpServletRequest request){	
		return "trade/trade";
	}
	@RequestMapping("cartview")
	public String CartVeiw(ModelMap map,HttpServletRequest request){
		String user_id = request.getSession().getAttribute("id").toString();
		Object user_name = request.getSession().getAttribute("name");
		Object user_pic = request.getSession().getAttribute("url");
		System.out.println(user_pic);
		map.put("user_name", user_name);
		map.put("user_url", user_pic);
		String sql = "select * from goods where id in (select goods_id from record where user_id = ?)";
		List<Map<String, Object>> map1 = BaseDao.findList(sql, user_id);
		map.put("items", map1);
		return "trade/cart";
	}
	@RequestMapping("productview")
	public String ProductVeiw(ModelMap map,HttpServletRequest request){	
		return "trade/product";
	}	
		
	@RequestMapping("toPersonalInfo")
	public String ToPersonalInfo(ModelMap map, HttpServletRequest request){
		return "redirect:../personal_center/gerenxinxixiugai";
	}

}