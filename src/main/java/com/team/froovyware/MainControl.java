package com.team.froovyware;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mybatis.dao.DraftDAO;
import mybatis.dao.MainDAO;
import mybatis.vo.DeptVO;
import mybatis.vo.DraftVO;
import spring.util.DataList;

@Controller
public class MainControl {
	
	@Autowired
	private MainDAO main_dao;
	
	
	@RequestMapping("/main_draft_list.gvy")
	@ResponseBody
	public Map<String, String> main_draft_ajax(String draftSearch, String draft_write_year){
		
		String html = null;
		DataList data = new DataList();
		
		DraftVO[] draft_search_list = main_dao.selectDraft(draftSearch, draft_write_year);
		
		html = data.getDraftHtml(draft_search_list).toString();

		
		Map<String, String> map = new HashMap<String, String>();
		map.put("html", html);
		
		return map;
	}
	
}
