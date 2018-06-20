package mybatis.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import mybatis.vo.DraftVO;
import mybatis.vo.EmpVO;

public class DraftDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	//기안리스트 및 검색
	public DraftVO[] draftList(String draftSearch, String draft_write_year) {
		
		DraftVO[] ar = null;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("draftSearch", draftSearch);
		map.put("draft_write_year", draft_write_year);
		
		List<EmpVO> list = sqlsession.selectList("draft.draftList",map);
		
		if(list != null && list.size() > 0) {
			ar = new DraftVO[list.size()];
			list.toArray(ar);
		}
		
		
		return ar;
	}
	
	
	//결재자 리스트
	public EmpVO[] getEmpList() {
		
		
		EmpVO[] ar = null;
		
		List<EmpVO> list = sqlsession.selectList("emp.empList");
		
		if(list != null && list.size() > 0) {
			ar = new EmpVO[list.size()];
			list.toArray(ar);
		}
		
		
		
		return ar;
	}
	
	//기안등록
	public boolean draftWrite(DraftVO dvo) {
		
		boolean check = false;
		
		int cnt = sqlsession.insert("draft.draftWrite", dvo);
		if(cnt > 0) {
			check = true;
		}
		
		return check;
	}
	
	
	//문서번호 가져오기
	public DraftVO getDraftCode(String e_code) {
		
		DraftVO dvo = sqlsession.selectOne("draft.getDraftCode", e_code);
		
		
		return dvo;
	}
	
	//기안 체크박스 선택삭제
	public boolean draftSelectDel(String checkDel) {
		
		boolean check = false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("draft_code", checkDel);
		
		int cnt = sqlsession.delete("draft.draftCheckDel",map);
		
		if(cnt > 0) {
			check = true;
		}
		
		return check;
		
	}
	
	
	public boolean approvalDel(String checkDel) {
		
		boolean check = false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("draft_code", checkDel);
		
		int cnt = sqlsession.delete("draft.approvalCheckDel",map);
		
		if(cnt > 0) {
			check = true;
		}
		
		return check;
		
	}

	
	//draft_code를 가져와 사원정보를 얻는다.
	public DraftVO draftGet(String draft_code) {
		DraftVO dvo = sqlsession.selectOne("draft.draftGet", draft_code);
		return dvo;
				
	}
	
	//결재 반려 시
		public boolean returnApproval(Map<String, String> map) {
			int cnt = sqlsession.update("approval.returnDraft", map);
			if(cnt >0)
				return true;
			else
				return false;
		}
	
}
