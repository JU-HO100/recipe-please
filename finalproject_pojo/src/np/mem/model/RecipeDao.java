package np.mem.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import np.com.util.MyBatisCommonFactory;
import np.com.vo.RecipeBoardVO;

//게시판기능을 가진 다오
public class RecipeDao {
	Logger logger = Logger.getLogger(RecipeDao.class);
	private static final String NAMESPACE = "np.mem.mybatis.RecipeMapper.";
	private SqlSession session = null;
	
	// 싱글톤
	private static RecipeDao instanceDao = new RecipeDao();
	private RecipeDao() {
		session = MyBatisCommonFactory.getSqlSession();  
	}
	public static RecipeDao getInstance() {
		return instanceDao;
	}
	
	// 제목을 클릭하였을 때 조회수 증가
	public void readCount(int no){
		int result = 0;
		try {
			result = session.update(NAMESPACE+"updateExboard",no);
			logger.info(result);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	// 전체 Board 혹은 검색 Board
	public List<RecipeBoardVO> getBoardList(RecipeBoardVO board) {
		List<RecipeBoardVO> rcpContent = null;
		try {
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_boardList",board);
			rcpContent = (ArrayList)board.getRcpCursor();
			logger.info(rcpContent);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return rcpContent;
	}
	
	// 제목을 클릭하였을 때 특정 항목을 검색할 로직 [컨텐트]
	public List<RecipeBoardVO> getContent(RecipeBoardVO board) {
		List<RecipeBoardVO> rcpContent = null;
		try {
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_boardContent",board);
			rcpContent = (ArrayList)board.getRcpCursor();
			logger.info(rcpContent);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return rcpContent;
	}
	
	//글쓰기 로직
	public int writeRecipe(RecipeBoardVO board) {
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
	
	//글 수정하기
	public int updateDB(RecipeBoardVO board){
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
	
	
	
	// 글 삭제
	public int deleteDB(int no){
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
	
	//글 좋아요 & 좋아요삭제
	public int likeRcpStatus(RecipeBoardVO board) {
		int result=0;
		try {
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_likeRcpStatus",board);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

}
