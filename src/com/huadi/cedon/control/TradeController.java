package com.huadi.cedon.control;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huadi.cedon.dao.LoginMapper;
import com.huadi.cedon.jdbc.dao.BaseDao;
import com.huadi.cedon.model.Login;

@Component
@RequestMapping("trade")
public class TradeController extends BaseController implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Resource
	private LoginMapper tradeMapper;
	
	@RequestMapping("tradeview")
	public String TradeVeiw(ModelMap map,HttpServletRequest request){	
		return "trade/trade";
	}
	@RequestMapping("cartview")
	public String CartVeiw(ModelMap map,HttpServletRequest request){	
		return "trade/cart";
	}	

}