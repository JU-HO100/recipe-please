package np.mem.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import np.com.util.MyBatisCommonFactory;
import np.com.vo.MemberVO;
import np.com.vo.ResumeVO;

public class MemberDao {
	Logger logger = Logger.getLogger(MemberDao.class);
	private static final String NAMESPACE = "np.mem.mybatis.MemberMapper.";
	SqlSession session = null;
	
	// 싱글톤
	private static MemberDao instanceDao = new MemberDao();
	private MemberDao() {
		session = MyBatisCommonFactory.getSqlSession();  
	}
	public static MemberDao getInstance() {
		return instanceDao;
	}
	
	//회원가입
	public String memRegister(MemberVO memVO) {
		String regiMsg=null;
		try {
			// 물음표에 매개변수로 전달된 데이터 매핑
			memVO.setField("REGISTER");
			session.selectOne(NAMESPACE+"proc_Regi",memVO);
			regiMsg = memVO.getMsg();
			logger.info(regiMsg);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return regiMsg;
	}
	
	//회원가입중 id중복검사
	public String memCheck(MemberVO memVO) {
		String msg=null;
		try {
			memVO.setField("ID_CHECK");
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_idCheck",memVO);
			msg = memVO.getMsg();
			logger.info(msg);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return msg;
	}
	
	
	public String Login(MemberVO memVO){
		String loginMsg = null;
		try {
			session.selectOne(NAMESPACE+"proc_Login",memVO);
			loginMsg = memVO.getMsg();
			logger.info(loginMsg);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return loginMsg;
	}
	
	
	//회원 상세보기
	//리턴 결과로 아무것도 없기에 selectOne 으로 하던 selectList 로 하던 상관없다.
	public ArrayList<String> myPage(MemberVO memVO){
		try {
			session.selectOne(NAMESPACE+"proc_myPage",memVO);
			logger.info(memVO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return memVO.getCursor();
	}
	
	//쿠킹클래스 체크
	public String myPage_cookclass(){//어떤 파라미터를 넣어줘야하는가??
		String msg=null;
		try {
			session.selectOne(NAMESPACE+"proc_myPage");
			logger.info("");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return msg;
	}
	
	// 회원 정보수정
	public String updateMypage(MemberVO memVO){
		String updateMsg=null;
		try {
			session.update(NAMESPACE+"proc_updateMypage",memVO);
			updateMsg =  memVO.getMsg();
			logger.info(updateMsg);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return updateMsg;
	}
	
	
	// 회원 탈퇴
	public String withDraw(MemberVO memVO){
		String deleteMsg=null;
		try {
			session.delete(NAMESPACE+"proc_withDraw",memVO);
			deleteMsg = memVO.getMsg();
			logger.info(deleteMsg);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return deleteMsg;
	}
	
	//셰프 양식서 제출
	public String chefResume(ResumeVO resumeVO) {
		String msg=null;
		try {
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_resume",resumeVO);
			msg = resumeVO.getMsg();
			logger.info(msg);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return msg;
	}
	
	
	//ID&PW 찾기9
	public ArrayList<String> forgotID_PW(MemberVO memVO) {
		try {
			session.selectOne(NAMESPACE+"proc_np_mem_SEARCH",memVO);
			logger.info(memVO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return memVO.getCursor();
	}

}
