package com.huadi.cedon.control;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("game")
public class GameController extends BaseController implements Serializable  {
	private static final long serialVersionUID = 1L;

	@RequestMapping("gameview")
	public String gameview(ModelMap map,HttpServletRequest request){
		String user_name = request.getSession().getAttribute("name").toString();
		map.put("user", user_name);
		return "game/game";
	}
	@RequestMapping("dianziview")
	public String dianziview(ModelMap map,HttpServletRequest request){
		String user_name = request.getSession().getAttribute("name").toString();
		map.put("user", user_name);
		return "game/dianzi";
	}
	@RequestMapping("shouyouview")
	public String shouyouview(ModelMap map,HttpServletRequest request){
		String user_name = request.getSession().getAttribute("name").toString();
		map.put("user", user_name);
		return "game/shouyou";
	}
	@RequestMapping("wangyouview")
	public String wangyouview(ModelMap map,HttpServletRequest request){
		String user_name = request.getSession().getAttribute("name").toString();
		map.put("user", user_name);
		return "game/wangyou";
	}
}