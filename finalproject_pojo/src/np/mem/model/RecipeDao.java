package np.mem.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import np.com.util.MyBatisCommonFactory;
import org.apache.log4j.Logger;

import np.com.util.MyBatisCommonFactory;
import np.com.vo.RecipeBoardVO;

//게시판기능을 가진 다오
public class RecipeDao {
	Logger logger = Logger.getLogger(RecipeDao.class);
	private static final String NAMESPACE = "np.mem.mybatis.RecipeMapper.";
	private SqlSessionFactory sqlMapper = null;
	private SqlSession session = null;
	
	// 싱글톤
	private static RecipeDao instanceDao = new RecipeDao();
	private RecipeDao() {
		sqlMapper = MyBatisCommonFactory.getSqlSessionFactory();
		session = MyBatisCommonFactory.getSqlSession();  
	}
	public static RecipeDao getInstance() {
		return instanceDao;
	}

	/*****************************************
	  글쓰기
	  @param
		  대분류(양식, 중식, 한식, 일식)							= category
		  소분류(찜, 구이, 튀김, 디저트..)							= foodgroup
		  회원 아이디												= m_id
		  게시판제목												= foodname
		  게시판 내용												= recipe_info
		  문자열[ 재료('고추장, 된장, 양파, 대파')]					= jaelyo
		  문자열[ 계량('4,2,반,반')]								= weight
		  문자열[ 단위('Tbs, Tbs, 개, 쪽')]							= unit
		  문자열[ 해시태그('사랑하는, 어머님께, 드리는, 선물')]		= hashtag
	 ****************************************/
	public String boardWrite(Map<String,Object> pmap) {
		SqlSession session = null;
		String regiMsg=null;
		try {
			session = sqlMapper.openSession();
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_board_insert",pmap);
			regiMsg = pmap.get("msg").toString();
			logger.info(regiMsg);
	
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
		return regiMsg;
	}
	
	/*****************************************
	 글 수정(글 쓰기보다 글no 파라미터 한개 더 필요)
	 @param
	  게시판 번호												= menucd
	  대분류(양식, 중식, 한식, 일식)                           	= category   
	  소분류(찜, 구이, 튀김, 디저트..)                         	= foodgroup  
	  회원 아이디                                              	= m_id
	  게시판제목                                               	= foodname
	  게시판 내용                                              	= recipe_info
	  문자열[ 재료('고추장, 된장, 양파, 대파')]                	= jaelyo     
	  문자열[ 계량('4,2,반,반')]                               	= weight 
	  문자열[ 단위('Tbs, Tbs, 개, 쪽')]                        	= unit
	  문자열[ 해시태그('사랑하는, 어머님께, 드리는, 선물')]    	= hashtag            
	 ****************************************/
	public String boardUpdate(Map<String,Object> pmap) {
		SqlSession session = null;
		String regiMsg=null;
		try {
			session = sqlMapper.openSession();
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_board_update",pmap);
			regiMsg = pmap.get("msg").toString();
			logger.info(regiMsg);
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
		return regiMsg;
	}
	
	/*****************************************
	 글 삭제
	 @param
	  게시판 번호												= menucd
	  회원아이디					                           	= m_id         
	 ****************************************/
	public String boardDelete(Map<String,Object> pmap) {
		SqlSession session = null;
		String regiMsg=null;
		try {
			session = sqlMapper.openSession();
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_board_delete",pmap);
			regiMsg = pmap.get("msg").toString();
			logger.info(regiMsg);
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
		return regiMsg;
	}
	
	/********************************
	 * 게시물보기
	 * @param field
	 * 	-BOARD_LIST			= 게시물 리스트
	 * 	-POP_BOARD_LIST		= 인기 게시물 리스트
	 *  -BOARD_CONTENT		= 단일 게시물과 내용
	 *********************************/
	public List<Map<String, Object>> boardView(Map<String,Object> pmap) {
		List<Map<String, Object>>list = new ArrayList<>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_board_list",pmap);
			list = (ArrayList)pmap.get("csr");
			for(Map<String,Object> map:list) {
				logger.info("DAO>>boardlist>>"+map);
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
		return list;
	}
	
	/********************************
	 * 재료, 대분류, 소분류 리스트 가져오기
	 * @param field
	 * 	-LAGE_CATEGORY		= 대분류
	 *  -SMALL_CATEGORY		= 소분류
	 *  -JAELYO_LIST		= 재료 리스트
	 *********************************/
	public List<Map<String, Object>> listForGiveInfo(Map<String,Object> pmap) {
		List<Map<String, Object>>list = new ArrayList<>();
		SqlSession session = null;
		try {
			session = sqlMapper.openSession();
			session.selectOne(NAMESPACE+"proc_board_give_info",pmap);
			list = (ArrayList)pmap.get("csr");
			for(Map<String,Object> map:list) {
				logger.info("DAO>>infolist>>"+map);
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
		return list;
	}
	
	/********************************
	 * 좋아요
	 * @param field
	 * 	-CHECK_LIKE		= 내가 좋아요를 눌렀는지?
	 *  -ALL_LIKES		= 게시글의 총 좋아요 개수
	 *  -CLICK_LIKE		= 좋아요 등록, 취소
	 *********************************/
	public String boardLikes(Map<String,Object> pmap) {
		SqlSession session = null;
		String regiMsg=null;
		try {
			session = sqlMapper.openSession();
			// 물음표에 매개변수로 전달된 데이터 매핑
			session.selectOne(NAMESPACE+"proc_board_likes",pmap);
			regiMsg = pmap.get("msg").toString();
			logger.info(regiMsg);
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
