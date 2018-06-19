package mybatis.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import mybatis.vo.DeptVO;
import mybatis.vo.EmpVO;
import mybatis.vo.PositionVO;


public class EmpDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	//사원리스트, 검색
	public EmpVO[] empList(String empSearch) {
		
		EmpVO[] ar = null;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("empSearch", empSearch);
		
		List<EmpVO> list = sqlSession.selectList("emp.empList",map);
		
		if(list != null && list.size() > 0) {
			ar = new EmpVO[list.size()];
			list.toArray(ar);
		}
		
		return ar;
	}
	
	//사원등록
	public boolean empInsert(EmpVO evo) {
		boolean check = false;
		
		int cnt = sqlSession.insert("emp.empInsert",evo);
		
		if(cnt > 0) {
			check = true;
		}
		
		return check;
	}
	
	
	//사원번호 중복체크
	public boolean checkEmpCode(String e_code) {
		
		boolean check = false;
		
		EmpVO evo = sqlSession.selectOne("emp.checkEmpCode",e_code);
		
		if(evo != null) {
			check = true;
		}
		
		return check;
	}
	
	//사원 체크박스 선택삭제
	public boolean empSelectDel(String checkDel) {
		
		boolean check = false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("e_code", checkDel);
		
		int cnt = sqlSession.delete("emp.empCheckDel",map);
		
		if(cnt > 0) {
			check = true;
		}
		
		return check;
		
	}
	
}
