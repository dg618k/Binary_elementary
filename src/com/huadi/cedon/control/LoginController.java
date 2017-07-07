package com.huadi.cedon.control;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huadi.cedon.dao.userMapper;
import com.huadi.cedon.model.user;
import com.huadi.cedon.util.MD5Util;
import com.huadi.cedon.jdbc.dao.BaseDao;

@Component
@RequestMapping("login")
public class LoginController extends BaseController implements Serializable {
	private static final long serialVersionUID = 1L;

	@Resource
	private userMapper userMapper;
	
	@RequestMapping("register")
	public String register(){
		return "login/register";
	}
	
	@RequestMapping("/registerCheck")
	@ResponseBody
	public Boolean registerCheck(user user, HttpServletRequest request) {
		String email = user.getEmail();
		if(BaseDao.findOne("select * from user where email = ?", email)==null)
			return false;
		return true;
	}
	
	@RequestMapping("/nameCheck")
	@ResponseBody
	public Boolean nameCheck(user user, HttpServletRequest request) {
		String name = user.getName();
		if(BaseDao.findOne("select * from user where name = ?", name)==null)
			return false;
		return true;
	}
	
	@RequestMapping("/picCheck")
	@ResponseBody
	public Boolean picCheck(HttpServletRequest request, HttpServletResponse response, HttpServlet servlet)
		throws ServletException, IOException{
		
		String clientCheckcode = request.getParameter("validateCode");//接收客户端浏览器提交上来的验证码
        String serverCheckcode = (String) request.getSession().getAttribute("checkcode");//从服务器端的session中取出验证码
		
		System.out.println("userCode="+clientCheckcode);
		System.out.println("serverCode="+serverCheckcode);
		if(clientCheckcode.equals(serverCheckcode))
			return true;
		return false;
	}
	
	@RequestMapping("registerInsert")//http://localhost:8080/scdx/login/registerveiw
	public String registerInsert(user user,ModelMap map,HttpServletRequest request){
			return "redirect:../index";
	}

	@RequestMapping("registerAjax")
	public String registerAjax(user user,
			@RequestParam(value="name", required = true) String name,
            @RequestParam(value="password", required = true) String password,
            @RequestParam(value="email", required = true) String email
    ) throws SQLException {
			user newUser = new user();
			newUser.setName(name);
			newUser.setEmail(email);
			newUser.setHeadUrl("self.jpg");
			newUser.setSalt(UUID.randomUUID().toString().substring(0, 5));
			newUser.setPassword(MD5Util.MD5(password+newUser.getSalt()));
			newUser.setSex(0);
			newUser.setAdmin(0);
			newUser.setMoney(0.0);
			userMapper.insertSelective(newUser);
		return "login/login";
	}
	
	@RequestMapping("login")
	public String logindo(ModelMap map, HttpServletRequest request) {
		return "login/login";
	}

	@RequestMapping("loginCheck")
	public String loginCheck(ModelMap map, @RequestParam(value="name", required = true) String name,
            @RequestParam(value="password", required = true) String password, HttpServletRequest request) {
		String sql = "select * from user where name = ?";
		Map<String, Object> map2 = BaseDao.findOne(sql, name);
		if (map2 != null) {
			String pass = map2.get("password") + "";
			if (pass.equals(MD5Util.MD5(password+map2.get("salt")))){
				System.out.println("name="+name+" password="+password+"pass="+pass); 
				HttpSession session = request.getSession();
				session.setAttribute("id", map2.get("id"));
				session.setAttribute("name", map2.get("name"));
				session.setAttribute("email", map2.get("email"));
				session.setAttribute("url", map2.get("head_url"));
				return "redirect:../index";
			}
			else{
				map.put("message", "密码错误");
			}
		}
		else{
			map.put("message", "帐号不存在");
		}
		return "login/login";
	}
	
	@RequestMapping(value = {"logout"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setAttribute("id", null);
		session.setAttribute("name", null);
		session.setAttribute("email", null);
        return "redirect:/index";
    }
	
}
