package np.admin.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminDao {
	Logger logger = LogManager.getLogger(AdminDao.class);

	private static final String NAMESPACE = "np.admin.model.AdminMapper";

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate = null;

	// 관리자 dao
	public List<Map<String, Object>> adminProcedure(Map<String, Object> pMap) {
		logger.info("myPage dao 호출");
		List<Map<String, Object>> list = new ArrayList<>();
		sqlSessionTemplate.selectOne("proc_admin_member", pMap);
		list = (ArrayList) pMap.get("masterCsr");
		return list;
	}
}
