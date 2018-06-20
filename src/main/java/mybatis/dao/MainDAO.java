package mybatis.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import mybatis.vo.DeptVO;
import mybatis.vo.DraftVO;

public class MainDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public DraftVO[] selectDraft(String draftSearch, String draft_write_year) {
		
		DraftVO[] ar = null;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("draftSearch", draftSearch);
		map.put("draft_write_year", draft_write_year);
		
		List<DraftVO> list = sqlSession.selectList("main.selectDraft",map);
		
		if(list != null && list.size() > 0) {
			ar = new DraftVO[list.size()];
			list.toArray(ar);
		}
		
		return ar;
	}
	
}
