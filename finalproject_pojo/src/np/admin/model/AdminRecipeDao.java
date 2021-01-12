package np.admin.model;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import np.com.util.MyBatisCommonFactory;


public class AdminRecipeDao {
	Logger logger = Logger.getLogger(AdminRecipeDao.class);
	private static final String NAMESPACE = "np.admin.mybatis.AdRecipeMapper.";
	private SqlSessionFactory sqlMapper = null;
	
	// 싱글톤
	private static AdminRecipeDao instanceDao = new AdminRecipeDao();
	private AdminRecipeDao() {
		sqlMapper = MyBatisCommonFactory.getSqlSessionFactory();
	}
	public static AdminRecipeDao getInstance() {
		return instanceDao;
	}
	

}
