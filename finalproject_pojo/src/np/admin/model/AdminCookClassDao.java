package np.admin.model;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import np.com.util.MyBatisCommonFactory;


public class AdminCookClassDao {
	Logger logger = Logger.getLogger(AdminCookClassDao.class);
	private static final String NAMESPACE = "np.admin.mybatis.AdCookClassMapper.";
	private SqlSessionFactory sqlMapper = null;
	
	// 싱글톤
	private static AdminCookClassDao instanceDao = new AdminCookClassDao();
	private AdminCookClassDao() {
		sqlMapper = MyBatisCommonFactory.getSqlSessionFactory();
	}
	public static AdminCookClassDao getInstance() {
		return instanceDao;
	}
	
	//쿠킹클래스 전체검색, 부분검색
	
	//쿠킹클래스 삭제
}
