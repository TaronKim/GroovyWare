package com.team.froovyware;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mybatis.dao.DraftDAO;
import mybatis.vo.DraftVO;
import mybatis.vo.EmpVO;


@Controller
public class DraftControl {
	
	@Autowired
	private DraftDAO draft_dao;
	
	
	//기안 리스트 및 검색
	@RequestMapping("/draft_regist.gvy")
	public ModelAndView draftRegist(String draftSearch, String draft_write_year) {
		
		//System.out.println(draft_write_year);
		
		DraftVO[] draft_list = draft_dao.draftList(draftSearch, draft_write_year);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("draft_write_year", draft_write_year);
		mv.addObject("draft_list", draft_list);
		mv.setViewName("draft/draft_regist");
		
		return mv;
	}
	
	
	//기안 작성
	@RequestMapping("/draft_form.gvy")
	public ModelAndView draftForm() {
		
		EmpVO[] emp_list = draft_dao.getEmpList();
		
		/*AutoCreateString acs = new AutoCreateString();
		String draft_code = acs.getString().toString();*/

		ModelAndView mv = new ModelAndView();
		mv.addObject("emp_list", emp_list);
		
		mv.setViewName("draft/draft_form");
		
		return mv;
	}
	
	
}
