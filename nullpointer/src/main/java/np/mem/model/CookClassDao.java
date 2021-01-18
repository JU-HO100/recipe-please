package np.mem.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CookClassDao {
	Logger logger = LogManager.getLogger(CookClassDao.class);

	private static final String NAMESPACE = "np.member.model.CookClassMapper";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate = null;

	/*****************************************
	 * 쿠킹클래스
	 * 
	 * @param field -OPEN_COOKCLASS 쿠킹클래스 생성 -ATTEND_COOKCLASS 쿠킹클래스 참가
	 ****************************************/
	public String cookClass(Map<String, Object> pMap) {
		logger.info("cookingClass dao 호출");
		String regiMsg = null;
		sqlSessionTemplate.selectOne("proc_cookclass", pMap);
		regiMsg = pMap.get("msg").toString();
		logger.info(regiMsg);
		return regiMsg;
	}

	public List<Map<String, Object>> cookClassForChef(Map<String, Object> pMap) {
		logger.info("showClass dao 호출");
		List<Map<String, Object>> list = new ArrayList<>();
		sqlSessionTemplate.selectOne("proc_cookclass_forChef", pMap);
		list = (ArrayList) pMap.get("csr");
		for (Map<String, Object> map : list) {
			logger.info("list" + map);
		}
		return list;
	}

	/*****************************************
	 * 쿠킹클래스 취소
	 * 
	 * @param -c_classcd 쿠킹클래스 번호 -m_id 회원 아이디(로그인중인 내 아이디)
	 ****************************************/
	public String cancelClass(Map<String, Object> pMap) {
		logger.info("cancelClass dao 호출");
		String regiMsg = null;
		sqlSessionTemplate.selectOne("proc_cancel_cookclass", pMap);
		regiMsg = pMap.get("msg").toString();
		logger.info(regiMsg);
		return regiMsg;
	}

	/*****************************************
	 * 쿠킹클래스 리스트
	 * 
	 * @param -m_id = 로그인전용 페이지이라서 사용
	 ****************************************/
	public List<Map<String, Object>> showClass(Map<String, Object> pMap) {
		logger.info("showClass dao 호출");
		List<Map<String, Object>> list = new ArrayList<>();
		sqlSessionTemplate.selectOne("proc_show_cookclass", pMap);
		list = (ArrayList) pMap.get("csr");
		for (Map<String, Object> map : list) {
			logger.info("list" + map);
		}
		return list;
	}

}
