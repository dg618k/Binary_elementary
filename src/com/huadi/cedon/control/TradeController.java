package com.huadi.cedon.control;

import java.io.Serializable;

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
		return "trade/cart";
	}	

}