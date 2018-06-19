package com.team.groovyware2;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import mybatis.dao.EmpDAO;
import mybatis.vo.EmpVO;
import spring.util.FileUploadUtil;

@Controller
public class EmpWriteControl {
	
	private String uploadPath;
	private String uploadPath2;
	
	@Autowired
	private ServletContext application;
	
	@Autowired
	private EmpDAO e_dao;
	

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	
	public void setUploadPath2(String uploadPath2) {
		this.uploadPath2 = uploadPath2;
	}



	//사원등록
	@RequestMapping("/emp_insert.gvy")
	public ModelAndView empInsert(EmpVO evo) {
		
		String[] s_ar = evo.getS_num_ar();
		String[] e_ar = evo.getE_email_ar();
		
		String[] date = evo.getHire_date().split("-");
		
		evo.setS_num(s_ar[0]+"-"+s_ar[1]);
		evo.setE_email(e_ar[0]+"@"+e_ar[1]);
		evo.setHire_date(date[0]+"/"+date[1]+"/"+date[2]);
		
		MultipartFile mf = evo.getUpload();
		
		//파일이 첨부 되었는지 판단!
		if(mf.getSize() > 0 && mf.getOriginalFilename().trim().length() > 0) {
			//파일첨부가 된경우
			String path = application.getRealPath(uploadPath);
			//파일을 올리기전 파일이름이 똑같은애가 있다면 이름을 바꿔줘야한다.
			//cos라이브러리, defaultRenamePolicy()
			//spring.util.FileUploadUtil 클래스로 만듬
			
			//첨부된 파일명을 얻어낸다.
			String f_name = mf.getOriginalFilename();
			
			//첨부파일을 저장하기전 같은이름의 파일이 존재하는지를 먼저 알아봐야함
			f_name = FileUploadUtil.checkSameFileName(f_name, path);
			
			//파일저장 하는함수
			try {
				mf.transferTo(new File(path, f_name));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//DB에 저장할 정보를 가지고 있는 BoardVO에도
			//파일명을 저장
			evo.setAttached_file(f_name);
			
		}else {
			//파일첨부를 하지 않은경우
			evo.setAttached_file("");
			
		}
		
		MultipartFile mf1 = evo.getUpload2();
		
		//파일이 첨부 되었는지 판단!
		if(mf1.getSize() > 0 && mf1.getOriginalFilename().trim().length() > 0) {
			//파일첨부가 된경우
			String path = application.getRealPath(uploadPath2);
			//파일을 올리기전 파일이름이 똑같은애가 있다면 이름을 바꿔줘야한다.
			//cos라이브러리, defaultRenamePolicy()
			//spring.util.FileUploadUtil 클래스로 만듬
			
			//첨부된 파일명을 얻어낸다.
			String f_name = mf1.getOriginalFilename();
			
			//첨부파일을 저장하기전 같은이름의 파일이 존재하는지를 먼저 알아봐야함
			f_name = FileUploadUtil.checkSameFileName(f_name, path);
			
			//파일저장 하는함수
			try {
				mf1.transferTo(new File(path, f_name));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//DB에 저장할 정보를 가지고 있는 BoardVO에도
			//파일명을 저장
			evo.setIdentity_file(f_name);
			
		}else {
			//파일첨부를 하지 않은경우
			evo.setIdentity_file("");
			
		}
		
		
		boolean checkInsert = e_dao.empInsert(evo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("checkInsert", checkInsert);
		mv.setViewName("redirect:emp_regist.gvy");
		
		return mv;
	}
	
}
