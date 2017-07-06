package com.huadi.cedon.control;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.huadi.cedon.dao.userMapper;
import com.huadi.cedon.jdbc.dao.BaseDao;
import com.huadi.cedon.model.EntityType;
import com.huadi.cedon.model.entity;
import com.huadi.cedon.model.user;
import com.huadi.cedon.util.ViewObject;

@Component
//@RequestMapping("index")
public class IndexController extends BaseController implements Serializable  {
	private static final long serialVersionUID = 1L;

	@Resource
	userMapper userMapper;
	
	private String search(int type){
		return "select * from entity where type = " + type + " order by score DESC limit 0,6";
	}
	
	@RequestMapping("index")
	public String index(ModelMap map, user user, HttpServletRequest request) {
		Object name = request.getSession().getAttribute("name");
		System.out.print(name);
		map.put("cartoon", BaseDao.findList(search(EntityType.ENTITY_CARTOON)));
		map.put("comic", BaseDao.findList(search(EntityType.ENTITY_COMMIC)));
		map.put("news", BaseDao.findList(search(EntityType.ENTITY_NEWS)));
		map.put("goods", BaseDao.findList(search(EntityType.ENTITY_GOODS)));
		map.put("type", BaseDao.findList("select * from etype "));
		map.put("user", name);
		return "index";
	}
	
	@RequestMapping("userIndex")
	public String userIndex(ModelMap map) {	
		return "redirect:/personal_center/perSpaceview";
	}
	
}
