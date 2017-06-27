package com.huadi.cedon.control;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("search")
public class SearchController extends BaseController implements Serializable  {
	private static final long serialVersionUID = 1L;

	@RequestMapping("searchview")
	public String historyView(ModelMap map,HttpServletRequest request){
		return "search/search";
	}
}
