package spring.util;

import mybatis.vo.DeptVO;
import mybatis.vo.DraftVO;
import mybatis.vo.DutyVO;
import mybatis.vo.PositionVO;

public class DataList {
	
	StringBuffer sb;
	
	public StringBuffer getDeptHtml(DeptVO[] d_list) {
		
		sb = new StringBuffer();
		
		if(d_list != null) {
			for(DeptVO dvo : d_list) {
				sb.append("<tr onclick=deptNameAjax('"+dvo.getDept_code()+"')>");
				sb.append("<td class='check_area'>");
				sb.append("<input type='checkbox' class='check'>");
				sb.append("</td>");
				sb.append("<td>");
				sb.append(dvo.getDept_code());
				sb.append("</td>");
				sb.append("<td>");
				sb.append(dvo.getDept_name());
				sb.append("</td>");
				sb.append("</tr>");
			}
		}else {
			sb.append("<tr>");
			sb.append("<td colspan='3' style='text-align:center'>");
			sb.append("등록된 값이 없습니다.");
			sb.append("</td>");
			sb.append("</tr>");
		}
		
		return sb;
	}
	
	public StringBuffer getPositionHtml(PositionVO[] p_list) {
		
		sb = new StringBuffer();
		
		if(p_list != null) {
			for(PositionVO pvo : p_list) {
				sb.append("<tr onclick=posNameAjax('"+pvo.getPos_code()+"')>");
				sb.append("<td class='check_area'>");
				sb.append("<input type='checkbox' class='check'>");
				sb.append("</td>");
				sb.append("<td>");
				sb.append(pvo.getPos_code());
				sb.append("</td>");
				sb.append("<td>");
				sb.append(pvo.getPos_name());
				sb.append("</td>");
				sb.append("</tr>");
			}
		}else {
			sb.append("<tr>");
			sb.append("<td colspan='3' style='text-align:center'>");
			sb.append("등록된 값이 없습니다.");
			sb.append("</td>");
			sb.append("</tr>");
		}
		
		return sb;
	}
	
	public StringBuffer getDutyHtml(DutyVO[] duty_list) {
		
		sb = new StringBuffer();
		
		if(duty_list != null) {
			for(DutyVO dutyvo : duty_list) {
				sb.append("<tr onclick=dutyNameAjax('"+dutyvo.getDuty_code()+"')>");
				sb.append("<td class='check_area'>");
				sb.append("<input type='checkbox' class='check'>");
				sb.append("</td>");
				sb.append("<td>");
				sb.append(dutyvo.getDuty_code());
				sb.append("</td>");
				sb.append("<td>");
				sb.append(dutyvo.getDuty_name());
				sb.append("</td>");
				sb.append("</tr>");
			}
		}else {
			sb.append("<tr>");
			sb.append("<td colspan='3' style='text-align:center'>");
			sb.append("등록된 값이 없습니다.");
			sb.append("</td>");
			sb.append("</tr>");
		}
		
		return sb;
	}
	
	//메인 기안상신 ajax
	public StringBuffer getDraftHtml(DraftVO[] draft_list) {
		
		sb = new StringBuffer();
		
		if(draft_list != null) {
			for(DraftVO draftvo : draft_list) {
				sb.append("<tr class='rgNoRecords'>");
				sb.append("<td>");
				sb.append(draftvo.getDraft_code());
				sb.append("</td>");
				sb.append("<td>");
				sb.append(draftvo.getDraft_title());
				sb.append("</td>");
				sb.append("<td>");
				sb.append(draftvo.getEvo().getE_name());
				sb.append("</td>");
				sb.append("<td>");
				sb.append(draftvo.getDraft_write_year());
				sb.append("</td>");
				sb.append("</tr>");
			}
		}else {
			sb.append("<tr>");
			sb.append("<td colspan='4' style='text-align:center'>");
			sb.append("등록된 값이 없습니다.");
			sb.append("</td>");
			sb.append("</tr>");
		}
		
		return sb;
	}
	
}
