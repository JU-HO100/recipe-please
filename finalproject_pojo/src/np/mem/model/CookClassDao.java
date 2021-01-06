package np.mem.model;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import np.com.util.MyBatisCommonFactory;
import np.com.vo.CookClassVO;
import np.com.vo.RecipeBoardVO;


public class CookClassDao {
	Logger logger = Logger.getLogger(CookClassDao.class);
	private static final String NAMESPACE = "np.mem.mybatis.CookClassMapper.";
	private SqlSession session = null;
	
	// 싱글톤
	private static CookClassDao instanceDao = new CookClassDao();
	private CookClassDao() {
		session = MyBatisCommonFactory.getSqlSession();  
	}
	public static CookClassDao getInstance() {
		return instanceDao;
	}
	
	//쿠킹클래스 신청 [셰프 권한]
	public int writeRecipe(CookClassVO board) {
		int result=0;
		try {
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_boardWrite",board);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	
	//쿠킹클래스 수정 [셰프 권한]
	public int updateDB(CookClassVO board){
		int result = 0;
		Map<String,Object> pMap = new HashMap<>();
		try {
			result = session.update(NAMESPACE+"proc_boardWrite",board);
			logger.info(result);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	
	//쿠킹클래스 삭제 [셰프 권한]
	public int deleteDB(CookClassVO no){
		int result=0;
		try {
			Map<String,Object> pMap = new HashMap<>();
			pMap.put("deptno",no);
			result = session.delete(NAMESPACE+"deleteExboard",pMap);
			logger.info(result);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	
	//쿠킹클래스 리스트  - 주소로 검색
	public List<RecipeBoardVO> getContent(CookClassVO board) {
		List<RecipeBoardVO> rcpContent = null;
		try {
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_boardContent",board);
			rcpContent = (ArrayList)board.getCkClassCursor();
			logger.info(rcpContent);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return rcpContent;
	}
	
}
