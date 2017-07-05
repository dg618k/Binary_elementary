package com.huadi.cedon.control;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		Object name = request.getSession().getAttribute("name");
		System.out.println(user_id+";"+name);
		String sql = "select * from record where user_id = ?";
		List<Map<String, Object>> map1 = BaseDao.findList(sql, user_id);
		for(Map<String, Object> attribute : map1) {
			String goods_id = attribute.get("goods_id").toString();
			String sql1 = "select * from goods where id = ?";
			Map<String, Object> map2 = BaseDao.findOne(sql1, goods_id);
			map.put("pic", map2.get("url"));
			map.put("name", map2.get("name"));
			map.put("price", map2.get("price"));
			map2.put("remainder", map2.get("number"));
			System.out.println(map2);
			System.out.print(user_id);
		}
		return "trade/cart";
	}

}