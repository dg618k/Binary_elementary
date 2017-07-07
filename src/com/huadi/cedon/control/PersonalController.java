package com.huadi.cedon.control;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.huadi.cedon.jdbc.dao.BaseDao;
import com.huadi.cedon.model.user;

@Component
@RequestMapping("personal_center")
public class PersonalController extends BaseController implements Serializable {
	private static final long serialVersionUID = 1L;

	//播放历史
	@RequestMapping("historyview")
	public String historyView(ModelMap map,HttpServletRequest request){
		return "personal_center/view_history";
	}
	
	//好友界面
	@RequestMapping("friendview")
	public String friendView(ModelMap map, HttpServletRequest request){
		return "personal_center/friend";
	}
	
	//个人视频
	@RequestMapping("ownVideoview")
	public String ownVideoview(ModelMap map, HttpServletRequest request){
		return "personal_center/ownVideo";
	}
	
	//个人中心
	@RequestMapping("perSpaceview")
	public String perSpaceview(ModelMap map, HttpServletRequest request){
		return "personal_center/personal_space";
	}
	
	//上传界面
	@RequestMapping("uploadview")
	public String uploadView(ModelMap map, HttpServletRequest request){
		return "personal_center/upload";

	}
	
	//消息界面
	@RequestMapping("gerenxiaoxi")
	public String Gerenxiaoxi(ModelMap map,HttpServletRequest request){	
		return "personal_center/gerenxiaoxi/gerenxiaoxi";
	}
	
	//收藏视频
	@RequestMapping("shipinshoucang")
	public String shipinshoucang(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenshoucang/shipinshoucang";
		}
	
	//收藏漫画
	@RequestMapping("manhuashoucang")
	public String manhuashoucang(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenshoucang/manhuashoucang";
		}
	
	//@消息
	@RequestMapping("xiaoxi_aitewo")
	public String xiaoxi_aitewo(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenxiaoxi/xiaoxi_aitewo";
	}
	
	//点赞消息
	@RequestMapping("xiaoxi_dianzan")
	public String xiaoxi_dianza(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenxiaoxi/xiaoxi_dianzan";
	}
	
	//私信消息
	@RequestMapping("xiaoxi_sixin")
	public String xiaoxi_sixin(ModelMap map,HttpServletRequest request){
		
		return "personal_center/gerenxiaoxi/xiaoxi_sixin";
	}

	//系统消息
	@RequestMapping("xiaoxi_xitong")
	public String xiaoxi_xitong(ModelMap map,HttpServletRequest request){
		 
		return "personal_center/gerenxiaoxi/xiaoxi_xitong";
	}
	
	//个人信息显示及修改
   @RequestMapping("gerenxinxixiugai")
	public String gerenxinxixiugai(ModelMap map,HttpServletRequest request){
		String user_id = request.getSession().getAttribute("id").toString();
		String sql = "select * from user where id = ?";
		Map<String, Object> map1 = BaseDao.findOne(sql, user_id);
		map.put("user_name", map1.get("name"));
		map.put("user_signal", map1.get("signal"));
		map.put("user_sex", map1.get("sex"));
		map.put("user_tele", map1.get("tele"));
		map.put("user_money", map1.get("money"));
		map.put("user_url", map1.get("head_url"));
		map.put("user_email", map1.get("email"));
		return "personal_center/gerenxinxi/gerenxinxixiugai";
	}
	
   	//密码修改页面
	@RequestMapping("mimaxiugai")
	public String mimaxiugai(ModelMap map,HttpServletRequest request){
	 
		return "personal_center/gerenxinxi/mimaxiugai";
	}
	
	//昵称修改页面
	@RequestMapping("nichengxiugai")
	public String nichengxiugai(ModelMap map,HttpServletRequest request){
		return "personal_center/gerenxinxi/nichengxiugai";
	}
	
	//个人信息昵称检测
	@RequestMapping("/nameModifyCheck")
	@ResponseBody
	public Boolean nameCheck(user user, HttpServletRequest request) {
		String user_id = request.getSession().getAttribute("id").toString();
		String sql1 = "select * from user where id = ?";
		Map<String, Object> map1 = BaseDao.findOne(sql1, user_id);
		String oldName = map1.get("name").toString();
		String name = user.getName();
		if(BaseDao.findOne("select * from user where name = ?", name)==null || oldName.equals(name))
			return false;
		return true;
	}
	
	//个人信息修改提交
	@RequestMapping("nameModifyInsert")
	public String nameModifyInsert(@RequestParam(value="user_name", required = true) String name,
            @RequestParam(value="sex", required = true) String sex, @RequestParam(value="tele", required = true) String tele,HttpServletRequest request)throws SQLException{
		String user_id = request.getSession().getAttribute("id").toString();
		int user_sex = 0;
		System.out.println(sex);
		if(sex.equals("女"))
			user_sex = 1;
		String sql1 = "update user set name = ? where id = ?";
		String sql2 = "update user set sex = ? where id = ?";
		String sql3 = "update user set tele = ? where id = ?";
		BaseDao.updateSql(sql1, name, user_id);
		BaseDao.updateSql(sql2, user_sex+"", user_id);
		BaseDao.updateSql(sql3, tele, user_id);
		return "redirect:../personal_center/gerenxinxixiugai";
	}
	
	//个性签名修改页面
	@RequestMapping("qianmingxiugai")
	public String qianmingxiugai(ModelMap map,HttpServletRequest request){
	
	return "personal_center/gerenxinxi/qianmingxiugai";
	}
	
	//头像修改页面
	@RequestMapping("touxiangxiugai")
	public String touxiangxiugai(ModelMap map,HttpServletRequest request){
	
	return "personal_center/gerenxinxi/touxiangxiugai";
	}

}