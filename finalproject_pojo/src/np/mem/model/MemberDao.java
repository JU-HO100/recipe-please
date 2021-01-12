package np.mem.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import np.com.util.MyBatisCommonFactory;

public class MemberDao {
	Logger logger = Logger.getLogger(MemberDao.class);
	private static final String NAMESPACE = "np.mem.mybatis.MemberMapper.";
	private SqlSessionFactory sqlMapper = null;
	
	// 싱글톤
	private static MemberDao instanceDao = new MemberDao();
	private MemberDao() {
		sqlMapper = MyBatisCommonFactory.getSqlSessionFactory();
	}
	public static MemberDao getInstance() {
		return instanceDao;
	}
	

	//field
	//REGISTER = 회원가입
	//ID_CHECK = ID중복체크
	//NICK_CHECK= 닉네임 중복체크
	public String memRegister(Map<String,Object> pmap) {
		SqlSession session = null;
		String regiMsg=null;
		try {
			session = sqlMapper.openSession();
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_Regi",pmap);
			regiMsg = pmap.get("msg").toString();
			logger.info(regiMsg);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return regiMsg;
	}
	
	// 회원 탈퇴
	public String withDraw(Map<String,Object> pmap){
		SqlSession session = null;
		String deleteMsg=null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_mem_withdrawal",pmap);
			deleteMsg = pmap.get("msg").toString();
			logger.info(deleteMsg);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return deleteMsg;
	}
	
	//로그인
	public List<Map<String, Object>> Login(Map<String,Object> pmap) {
		List<Map<String, Object>>list = new ArrayList<>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_mem_login",pmap);
			logger.info(pmap);
			list = (ArrayList)pmap.get("csr");
			for(Map<String,Object> map:list) {
				logger.info("DAO>>Login>>"+map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	
	// 회원 정보수정
	public String updateMypage(Map<String,Object> pmap){
		SqlSession session = null;
		String updateMsg=null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_mem_update",pmap);
			updateMsg =  pmap.get("msg").toString();
			logger.info(updateMsg);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return updateMsg;
	}
	
	//ID&PW 찾기9
	//단일 데이터라 쓸데없지만 커서로 한번 받아봄 ㅎㅎ
	public String forgotID_PW(Map<String,Object> pmap) {
		List<Map<String, Object>>list = new ArrayList<>();
		String msg = null;
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_idpw_search",pmap);
			logger.info(pmap);
			list = (ArrayList)pmap.get("csr");
			for(Map<String,Object> map:list) {
				logger.info(map.get("M_ID"));
				if(map.get("MSG")== null) {
					msg = map.get("M_ID").toString();
				}else {
					msg= map.get("MSG").toString();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return msg;
	}

	//나의 인기 게시물 개수 체크(3개이상 or 3개미만)
	//셰프 양식서 제출
	public String chefResume(Map<String,Object> pmap) {
		SqlSession session = null;
		String msg=null;
		try {
			session = sqlMapper.openSession();
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_chef_resume",pmap);
			msg = pmap.get("msg").toString();
			logger.info(msg);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return msg;
	}
	
	//회원 신고
	public String memReport(Map<String,Object> pmap) {
		SqlSession session = null;
		String msg=null;
		try {
			session = sqlMapper.openSession();
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_mem_report",pmap);
			msg = pmap.get("msg").toString();
			logger.info(msg);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return msg;
	}
	
	//셰프 랭킹, 그리고 거기서 셰프 클릭했을때 나오는 게시글
	public List<Map<String, Object>> chefDetail(Map<String,Object> pmap) {
		List<Map<String, Object>>list = new ArrayList<>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_chef_list",pmap);
			logger.info(pmap);
			list = (ArrayList)pmap.get("csr");
			for(Map<String,Object> map:list) {
				logger.info("DAO>>chefDetail>>"+map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	
	
	//회원 상세보기 - 마이페이지, 나의 쿠킹클래스 체크(미구현)
	//리턴 결과로 아무것도 없기에 selectOne 으로 하던 selectList 로 하던 상관없다.
	public List<Map<String, Object>> myPage(Map<String,Object> pmap){
		List<Map<String, Object>> list = new ArrayList<>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_check_mypage",pmap);
			logger.info(pmap);
			list = (ArrayList)pmap.get("csr");
			for(Map<String,Object> map:list) {
				logger.info("DAO>>myPage>>"+map);
			}
			logger.info(pmap);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	
	


}
