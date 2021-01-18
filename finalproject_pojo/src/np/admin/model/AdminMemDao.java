package np.admin.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import org.apache.ibatis.session.SqlSessionFactory;

import org.apache.log4j.Logger;

import np.com.util.MyBatisCommonFactory;
import np.com.vo.MemberVO;
import np.com.vo.ResumeVO;


public class AdminMemDao {
	Logger logger = Logger.getLogger(AdminMemDao.class);
	private static final String NAMESPACE = "np.admin.mybatis.AdMemberMapper.";

	private SqlSessionFactory sqlMapper = null;

	private SqlSession session = null;

	
	// 싱글톤
	private static AdminMemDao instanceDao = new AdminMemDao();
	private AdminMemDao() {
		sqlMapper = MyBatisCommonFactory.getSqlSessionFactory();
		session = MyBatisCommonFactory.getSqlSession();  
	}
	public static AdminMemDao getInstance() {
		return instanceDao;
	}
	
	//회원 전체 보여주기
	public List<MemberVO> memList(MemberVO memVO) {
		SqlSession session = null;
		List<MemberVO> memList = null;
		try {
			session = sqlMapper.openSession();
		List<MemberVO> memList = null;
		try {
			memVO.setField("MEMBER_NAME");
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_admin_memlist",memVO);
			memList = (ArrayList)memVO.getCursor();
			logger.info(memList);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return memList;
	}
	
	// 회원 셰프로 승인
	public String updateChef(MemberVO memVO){
		SqlSession session = null;
		String updateMsg=null;
		try {
			session = sqlMapper.openSession();
		String updateMsg=null;
		try {
			session.update(NAMESPACE+"proc_updateChef",memVO);
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
	
	// 회원 밴
	public String withDraw(MemberVO memVO){
		SqlSession session = null;
		String deleteMsg=null;
		try {
			session = sqlMapper.openSession();
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
	
	
	//블랙리스트 등록
	public String chefResume(ResumeVO resumeVO) {
		SqlSession session = null;
		String msg=null;
		try {
			session = sqlMapper.openSession();
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
	
	
	
}
