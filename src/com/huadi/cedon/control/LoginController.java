package com.huadi.cedon.control;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huadi.cedon.dao.userMapper;
import com.huadi.cedon.model.user;
import com.huadi.cedon.jdbc.dao.BaseDao;

@Component
@RequestMapping("login")
public class LoginController extends BaseController implements Serializable {
	private static final long serialVersionUID = 1L;

	@Resource
	private userMapper userMapper;

	@RequestMapping("register")
	@Transactional(rollbackFor = Exception.class)
	public String register(user user, HttpServletRequest request) {
		if (userMapper.insertSelective(user) > 0) {
			return "redirect:/login";
		} else {
			return "redirect:/index";
		}
	}

	@RequestMapping(value = {"/regiaterAjax"}, method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public Map<String, Object> registerAjax(
			@RequestParam("name") String name,
            @RequestParam("password") String password,
            @RequestParam("email") String email
            ) throws SQLException {
		
		Map<String, Object> info = new HashMap<String, Object>();
		
		if(StringUtils.isEmpty(name)){
            info.put("message", "�û�����Ϊ��");
            return info;
        }

        if(StringUtils.isEmpty(password)){
        	info.put("message", "���벻��Ϊ��");
            return info;
        }
		
        if(StringUtils.isEmpty(email)){
            info.put("message", "���䲻��Ϊ��");
            return info;
        }
        
		String sql1 = "select * from login where name = ?";

		if (BaseDao.findOne(sql1, name) != null) {
			info.put("success", false);
			info.put("message", "�ѱ�ע��!");
			return info;
		} 
		
		String sql2 = "insert into user (name,password,email) values(?,?,?)";
		BaseDao.updateSql(sql2, name, password, email);
		

		return info;
	}

	@RequestMapping("login")
	public String logindo(ModelMap map, @RequestParam("name") String name,
            @RequestParam("password") String password,HttpServletRequest request) {
		String sql = "select * from uesr where name = ?";
		Map<String, Object> map2 = BaseDao.findOne(sql, name);
		if (map2 != null) {
			String pass = map2.get("loginpass") + "";
			if (pass.equals(password)) {
				HttpSession session = request.getSession();
				session.setAttribute("id", map2.get("id"));
				session.setAttribute("name", map2.get("name"));
				session.setAttribute("email", map2.get("email"));
				
				return "redirect:index";
			} else {
				map.put("message", "�������");
			}
		} else {
			map.put("message", "�˺Ų�����");
		}
		return "login/login";
	}
	
	@RequestMapping(value = {"/logout/"}, method = {RequestMethod.GET, RequestMethod.POST})
    public String logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setAttribute("id", null);
		session.setAttribute("name", null);
		session.setAttribute("email", null);
		
        return "redirect:/index";
    }
	
}
