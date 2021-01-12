package np.mem.model;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import np.com.util.MyBatisCommonFactory;


public class CookClassDao {
	Logger logger = Logger.getLogger(CookClassDao.class);
	private static final String NAMESPACE = "np.mem.mybatis.CookClassMapper.";
	private SqlSessionFactory sqlMapper = null;
	
	// 싱글톤
	private static CookClassDao instanceDao = new CookClassDao();
	private CookClassDao() {
		sqlMapper = MyBatisCommonFactory.getSqlSessionFactory();
	}
	public static CookClassDao getInstance() {
		return instanceDao;
	}
	
	/*****************************************
	 쿠킹클래스
	 @param	field
	  -OPEN_COOKCLASS		쿠킹클래스 생성
	  -ATTEND_COOKCLASS 	쿠킹클래스 참가
	 ****************************************/
	public String cookingClass(Map<String,Object> pmap) {
		SqlSession session = null;
		String regiMsg=null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_cookclass",pmap);
			regiMsg = pmap.get("msg").toString();
			logger.info(regiMsg);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return regiMsg;
	}
	
	/*****************************************
	 쿠킹클래스 취소
	 @param	
	  -c_classcd		쿠킹클래스 번호
	  -m_id 			회원 아이디(로그인중인 내 아이디)
	 ****************************************/
	public String cancelClass(Map<String,Object> pmap) {
		SqlSession session = null;
		String regiMsg=null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_cancel_cookclass",pmap);
			regiMsg = pmap.get("msg").toString();
			logger.info(regiMsg);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return regiMsg;
	}
	
	/*****************************************
	 쿠킹클래스 리스트
	 @param	
	 	-m_id 	= 로그인전용 페이지이라서 사용
	 ****************************************/
	public List<Map<String, Object>> showClass(Map<String,Object> pmap) {
		List<Map<String, Object>>list = new ArrayList<>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_show_cookclass",pmap);
			logger.info(pmap);
			list = (ArrayList)pmap.get("csr");
			for(Map<String,Object> map:list) {
				logger.info("DAO>>showClass>>"+map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	/*****************************************
	 셰프전용
	 클래스 신청 회원보기
	 신청회원 수락, 신청회원 반려
	 @param	
	 	-field : SHOW_APPLY_USERS, ACCEPT_MYCLASS, DENY_MYCLASS
	 	-chef_id				= 셰프 아이디(내 아이디)
	 	-c_classcd				= 클래스 번호
	 	-m_id					= 처리할 회원 아이디
	 ****************************************/
	public List<Map<String, Object>> classForChef(Map<String,Object> pmap) {
		List<Map<String, Object>>list = new ArrayList<>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_cookclass_forChef",pmap);
			logger.info(pmap);
			list = (ArrayList)pmap.get("csr");
			for(Map<String,Object> map:list) {
				logger.info("DAO>>classForChef>>"+map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
}
