package com.huadi.cedon.control;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		String user_name = request.getSession().getAttribute("name").toString();
		map.put("user", user_name);
		return "trade/trade";
	}
	
	//购物车信息生成
	@RequestMapping("cartview")
	public String CartVeiw(ModelMap map,HttpServletRequest request){
		String user_id = request.getSession().getAttribute("id").toString();
		Object user_name = request.getSession().getAttribute("name");
		String user_pic = request.getSession().getAttribute("url").toString();
		map.put("user_name", user_name);
		map.put("user_url", "../img/login/"+user_pic);
	//	System.out.println(map.get("user_url"));
		String sql = "select * from goods where id in (select goods_id from record where user_id = ?)";
		List<Map<String, Object>> map1 = BaseDao.findList(sql, user_id);
		map.put("items", map1);
		return "trade/cart";
	}
	
	//删除购物记录
	@RequestMapping("deleteRecord")
	@ResponseBody
	public Boolean deleteRecord(HttpServletRequest request) throws SQLException{
		String user_id = request.getSession().getAttribute("id").toString();
		String goods_id = request.getParameter("goods_id");
		System.out.println("goodsid:"+goods_id+" userid:"+user_id);
		String sql = "delete from record where user_id = ? and goods_id = ?";
		BaseDao.updateSql(sql, user_id, goods_id);
		return true;
	}
	
	//商品详情页面
	@RequestMapping("productview")
	public String ProductVeiw(ModelMap map,HttpServletRequest request){	
		String user_name = request.getSession().getAttribute("name").toString();
		map.put("user", user_name);
		return "trade/product";
	}	
		
	@RequestMapping("toPersonalInfo")
	public String ToPersonalInfo(ModelMap map, HttpServletRequest request){
		return "redirect:../personal_center/gerenxinxixiugai";
	}

}