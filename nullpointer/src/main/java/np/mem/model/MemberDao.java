package np.mem.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberDao {
	Logger logger = LogManager.getLogger(MemberDao.class);

	private static final String NAMESPACE = "np.member.model.MemberMapper";

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate = null;

	// 로그인
	public List<Map<String, Object>> Login(Map<String, Object> pMap) {
		logger.info("login dao 호출");
		List<Map<String, Object>> list = new ArrayList<>();
		sqlSessionTemplate.selectOne("proc_mem_login", pMap);
		logger.info("쿼리 탔음");
		list = (ArrayList) pMap.get("search");
		return list;
	}

	// 회원가입/아이디/닉네임중복체크
	public String memRegister(Map<String, Object> pMap) {
		logger.info("memRegister dao 호출");
		String regiMsg = null;
		sqlSessionTemplate.selectOne("proc_Regi", pMap);
		regiMsg = pMap.get("msg").toString();
		return regiMsg;
	}

	// 회원정보수정
	public String updateMypage(Map<String, Object> pMap) {
		logger.info("updateMypage dao 호출");
		String updateMsg = null;
		sqlSessionTemplate.selectOne("proc_mem_update", pMap);
		updateMsg = pMap.get("msg").toString();
		return updateMsg;
	}

	// 회원탈퇴
	public String withDraw(Map<String, Object> pMap) {
		logger.info("withDrawal dao 호출");
		String deleteMsg = null;
		sqlSessionTemplate.selectOne("proc_mem_withdrawal", pMap);
		deleteMsg = pMap.get("msg").toString();
		return deleteMsg;
	}

	// 아이디/비번찾기
	public String forgotID_PW(Map<String, Object> pMap) {
		logger.info("forgotID_PW dao 호출");
		List<Map<String, Object>> list = new ArrayList<>();
		String msg = null;
		sqlSessionTemplate.selectOne("proc_idpw_search", pMap);
		list = (ArrayList) pMap.get("search");
		for (Map<String, Object> map : list) {
			logger.info(map.get("M_ID"));
			msg = map.get("M_ID").toString();
		}
		return msg;
	}

	// 회원신고
	public String memReport(Map<String, Object> pMap) {
		logger.info("memReport dao 호출");
		String msg = null;
		sqlSessionTemplate.selectOne("proc_mem_report", pMap);
		msg = pMap.get("msg").toString();
		return msg;
	}

	// 쉐프 신청
	public String chefResume(Map<String, Object> pMap) {
		logger.info("chefResume dao 호출");
		String msg = null;
		sqlSessionTemplate.selectOne("proc_chef_resume", pMap);
		msg = pMap.get("msg").toString();
		return msg;
	}

	// 마이페이지
	public List<Map<String, Object>> checkMyPage(Map<String, Object> pMap) {
		logger.info("myPage dao 호출");
		List<Map<String, Object>> list = new ArrayList<>();
		sqlSessionTemplate.selectOne("proc_check_myPage", pMap);
		list.add(pMap);
		return list;
	}

	// 검색기능
	public List<Map<String, Object>> memSearch(Map<String, Object> pMap) {
		logger.info("memSearch dao 호출");
		List<Map<String, Object>> list = new ArrayList<>();
		sqlSessionTemplate.selectOne("proc_mem_search", pMap);
		list.add(pMap);
		return list;
	}
}
