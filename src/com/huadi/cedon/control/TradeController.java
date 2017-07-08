package com.huadi.cedon.control;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		String sql1 = "select * from goods where type = ?";
		List<Map<String, Object>> map1 = BaseDao.findList(sql1, "1");
		List<Map<String, Object>> map2 = BaseDao.findList(sql1, "2");
		List<Map<String, Object>> map3 = BaseDao.findList(sql1, "3");
		List<Map<String, Object>> map4 = BaseDao.findList(sql1, "4");
		List<Map<String, Object>> map5 = BaseDao.findList(sql1, "5");
		List<Map<String, Object>> map6 = BaseDao.findList(sql1, "11");
		map.put("map1", map1);
		map.put("map2", map2);
		map.put("map3", map3);
		map.put("map4", map4);
		map.put("map5", map5);
		map.put("map6", map6);
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
		String sql = "select * from goods,record where goods.id = record.goods_id and record.user_id = ?";
		List<Map<String, Object>> map1 = BaseDao.findList(sql, user_id);
		System.out.println(map1);
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
		HttpSession session = request.getSession();
		String goods_id = session.getAttribute("goods_id").toString();
		String goods_name = session.getAttribute("goods_name").toString();
		String goods_num = session.getAttribute("goods_num").toString();
		String goods_price = session.getAttribute("goods_price").toString();
		String goods_url = session.getAttribute("goods_url").toString();
		String goods_type = session.getAttribute("goods_type").toString();
		map.put("goods_id", goods_id);
		map.put("goods_name", goods_name);
		map.put("goods_num", goods_num);
		map.put("goods_price", goods_price);
		map.put("goods_url", goods_url);
		map.put("goods_type", goods_type);
		return "trade/product";
	}	
	
	//商品信息读取
	@RequestMapping("/selectItem")
	@ResponseBody
	public Boolean selectItem(ModelMap map, HttpServletRequest request){
		String goods_id = request.getParameter("goods_id");
		String sql = "select * from goods where id = ?";
		Map<String, Object> map1 = BaseDao.findOne(sql, goods_id);
		HttpSession session = request.getSession();
		session.setAttribute("goods_id", map1.get("id"));
		session.setAttribute("goods_name", map1.get("name"));
		session.setAttribute("goods_num", map1.get("number"));
		session.setAttribute("goods_price", map1.get("price"));
		session.setAttribute("goods_url", map1.get("url"));
		session.setAttribute("goods_type", map1.get("type"));
		return true;
	}
	
	//加入购物车
	@RequestMapping("/insertToCart")
	@ResponseBody
	public Boolean insertToCart(ModelMap map, HttpServletRequest request) throws SQLException{
		String goods_num = request.getParameter("goods_num");
		String goods_id = request.getParameter("goods_id");
		String user_id = request.getSession().getAttribute("id").toString();
		String sql1 = "select * from record where goods_id = ?";
		Map<String, Object> map1 = BaseDao.findOne(sql1, goods_id);
		String cur_num;
		if(map1 != null){
			cur_num = map1.get("consume_number").toString();
			int sumNum = Integer.parseInt(goods_num) + Integer.parseInt(cur_num);
			String sql = "update record set consume_number = ? where goods_id = ?";
			BaseDao.updateSql(sql, sumNum+"", goods_id);
		}
		else{ 
			String sql = "insert into record values(null, ?, ?, ?, now())";
			BaseDao.updateSql(sql, user_id, goods_id, goods_num);
		}
		return true;
	}
		
	@RequestMapping("toPersonalInfo")
	public String ToPersonalInfo(ModelMap map, HttpServletRequest request){
		return "redirect:../personal_center/gerenxinxixiugai";
	}

}