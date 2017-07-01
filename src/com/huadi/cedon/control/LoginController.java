package com.huadi.cedon.control;

import java.io.IOException;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
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
	
	@RequestMapping("/picCheck")
	@ResponseBody
	public Boolean picCheck(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		String userinput = request.getParameter("userCode");
		System.out.println("userCode="+userinput);
		String clientCheckcode = userinput;
		generate_pic gen = new generate_pic();
		gen.doPost(request, response);
		String serverCheckcode = (String)request.getSession().getAttribute("checkcode");
		System.out.println("serverCode="+serverCheckcode);
		return clientCheckcode.equals(serverCheckcode);
	}
	
	@RequestMapping("registerInsert")//http://localhost:8080/scdx/login/registerveiw
	public String registerInsert(user user,ModelMap map,HttpServletRequest request){
			return "redirect:../index.jsp";
	}


	@RequestMapping(value = {"/regiaterAjax"}, method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public Map<String, Object> registerAjax(user user,
			@RequestParam(value="name", required = false) String name,
            @RequestParam(value="password", required = false) String password,
            @RequestParam(value="email", required = false) String email
            ) throws SQLException {
		
		Map<String, Object> info = new HashMap<String, Object>();        
		String sql1 = "select * from login where name = ?";

		if (BaseDao.findOne(sql1, user.getName()) != null) {
			info.put("success", false);
			info.put("message", "该用户名已被注册!");
		} else {
			info.put("success", true);
			info.put("message", "该用户名可以使用");
			
			user newUser = new user();
			newUser.setName(name);
			newUser.setEmail(email);
			newUser.setHeadUrl("");
			newUser.setSalt(UUID.randomUUID().toString().substring(0, 5));
			newUser.setPassword(MD5Util.MD5(password+user.getSalt()));
			userMapper.insert(newUser);
		}
		
		return info;
	}

	@RequestMapping("login")
	public String logindo(ModelMap map, @RequestParam(value="name", required = false) String name,
            @RequestParam(value="password", required = false) String password,HttpServletRequest request) {
		String sql = "select * from uesr where name = ?";
		Map<String, Object> map2 = BaseDao.findOne(sql, name);
		if (map2 != null) {
			String pass = map2.get("password") + "";
			if (pass.equals(MD5Util.MD5(password+map2.get("salt")))) {
				HttpSession session = request.getSession();
				session.setAttribute("id", map2.get("id"));
				session.setAttribute("name", map2.get("name"));
				session.setAttribute("email", map2.get("email"));
				
				return "redirect:/index";
			} else {
<<<<<<< HEAD
				map.put("message", "密码错误");
			}
		} else {
			map.put("message", "账号不存在");
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