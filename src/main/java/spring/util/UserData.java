package spring.util;

import mybatis.vo.EmpVO;

public class UserData {
	
	StringBuffer sb;
	
	public StringBuffer getUserHtml(EmpVO[] e_list) {
		
		sb = new StringBuffer();
		int idx = 0;
		for(EmpVO e : e_list) {
			sb.append("<tr onclick='checkdata("+idx+")'>");
			sb.append("<td>");
//			sb.append("<input type='radio' name='chk"+idx+"' class='check' onclick='checkdata("+idx+")'/>");
			sb.append("</td>");
			sb.append("<td>");
			sb.append(e.getE_code());
			sb.append("<input type='hidden' id='code"+idx+"' value='"+e.getE_code()+"'/></td>");
			sb.append("<td>");
			sb.append(e.getDvo().getDept_name());
			sb.append("<input type='hidden' id='dname"+idx+"' value='"+e.getDvo().getDept_name()+"'/></td>");
			sb.append("<td>");
			sb.append(e.getE_name());
			sb.append("<input type='hidden' id='ename"+idx+"' value='"+e.getE_name()+"'/></td>");
			sb.append("</tr>");
			idx++;
		}
		
		return sb;
	}
	
}
