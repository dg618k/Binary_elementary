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
	public String bofangview(ModelMap map,HttpServletRequest request){
		return "game/game";
	}
}