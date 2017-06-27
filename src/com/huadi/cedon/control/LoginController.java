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
@RequestMapping("login")
public class LoginController extends BaseController implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Resource
	private LoginMapper loginMapper;
	
	@RequestMapping("loginview.do")
	public String LoginVeiw(ModelMap map,HttpServletRequest request){
		 String name = request.getParameter("tttt");
		 System.out.println("name==="+name);
		map.put("name", "lisi");
		return "login/login";
	}	
	@RequestMapping("registerview")
	public String RegisterVeiw(ModelMap map,HttpServletRequest request){
		return "login/register";
	}
	@RequestMapping("tradeview")
	public String TradeVeiw(ModelMap map,HttpServletRequest request){
		
		return "trade/trade";
	}	
	@RequestMapping("registerlockview")
	public String RegisterlockView(ModelMap map, HttpServletRequest request){
		map.put("list", BaseDao.findList("select * from login limit 0,10"));
		return "login/registerlook";
	}
	@RequestMapping("registerInsert")//http://localhost:8080/scdx/login/registerveiw
	public String registerInsert(Login login,ModelMap map,HttpServletRequest request){
		System.out.println(map);
		System.out.println("login="+login);
		String userName = request.getParameter("userName");
		//return "redirect:/namespace/toController";
		
		if(loginMapper.insertSelective(login)>0){
			return "redirect:/login/registerlockview";
		}else{
			return "redirect:/login/registerview";
		}
	}	
	@RequestMapping("loginAjax")
	@ResponseBody
	public Map<String, Object> updateStart(Login login){
		Map<String, Object> info = new HashMap<String, Object>();
		String sql = "select * from login where user_name = ?";
		System.out.println(login.getUserName());
		if(BaseDao.findOne(sql, login.getUserName())==null){
			info.put("success", true);
			info.put("message", "");
		}
		else{
			info.put("success", false);
			info.put("message", "宸茶娉ㄥ唽");
		}
		System.out.println(info);
		return info;
	}
	
	@RequestMapping("logindo")
	public String logindo(Login login, ModelMap map, HttpServletRequest request){
		String sql = "select * from login where user_name = ?";
		Map<String, Object> map2 = BaseDao.findOne(sql, login.getUserName());
		if(map2!=null){
			String password = map2.get("user_password")+"";
			if(password.equals(login.getUserPassword())){
				HttpSession session = request.getSession();
				session.setAttribute("user_id", map2.get("user_id"));
				session.setAttribute("user_name", map2.get("user_name"));
				session.setAttribute("real_name", map2.get("real_name"));
				System.out.println(session);
				return "redirect:/login/registerlockview";
			}
			else{
				map.put("message", "瀵嗙爜閿欒");
				System.out.println("瀵嗙爜閿欒");
			}
		}
		else{
			map.put("message", "璐﹀彿涓嶅瓨鍦�");
		}
		return "login/login";
	}

}