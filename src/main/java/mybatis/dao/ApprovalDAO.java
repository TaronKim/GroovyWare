package mybatis.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import mybatis.vo.ApprovalVO;

public class ApprovalDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	//결재등록
	public boolean approvalInsert(ApprovalVO avo) {
		
		boolean check = false;
		
		int cnt = sqlsession.insert("approval.approvalInsert",avo);
		
		return check;
	}
	
}
