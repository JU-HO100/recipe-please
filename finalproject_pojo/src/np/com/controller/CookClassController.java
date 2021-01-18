package np.com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.google.gson.Gson;

import np.com.util.HashMapBinder;
import np.mem.model.CookClassDao;

//cookclass/*.np
import np.com.util.HashMapBinder;
import np.mem.model.CookClassDao;

public class CookClassController implements Action{
	Logger logger = Logger.getLogger(CookClassController.class);

	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ModelAndView mav = new ModelAndView(req, res);
		PrintWriter out = res.getWriter();
		String pageName = (String)req.getAttribute("pageName");
		CookClassDao cookClassDao = CookClassDao.getInstance();
		
		Gson g = null;
		String pageName = (String)req.getAttribute("pageName");//memberList
		CookClassDao cookClassDao = CookClassDao.getInstance();
		
	    Map<String,Object> pmap = new HashMap<>();
		HashMapBinder hmb = new HashMapBinder(req);
		hmb.bind(pmap);
		
		String forJson = null;
		
		logger.info("CookClassC map>>>>>>"+pmap);
		
		if(pageName.equals("createClass")) {	//쿠킹 클래스 생성 (셰프전용)
			pageName = "cookingClassList";
			pmap.put("field","OPEN_COOKCLASS");
			String msg= cookClassDao.cookingClass(pmap);
			logger.info("CookClassC - createClass"+msg);
			mav.addObject("msg", msg);
		}
		else if(pageName.equals("joinClass")) {		//쿠킹 클래스 참가
			pageName = "cookingClassList";
			pmap.put("field","ATTEND_COOKCLASS");
			pmap.put("c_cook", "");
			pmap.put("c_ingredients", "");
			pmap.put("c_zip", "");
			pmap.put("c_member", "");
			pmap.put("c_date", "");
			String msg= cookClassDao.cookingClass(pmap);
			logger.info("CookClassC - joinClass"+msg);
			mav.addObject("msg", msg);
		}
		else if(pageName.equals("cancelClass")) {		//쿠킹클래스 삭제 or 취소
			String msg= cookClassDao.cookingClass(pmap);
			logger.info("CookClassC - cancelClass"+msg);
			mav.addObject("msg", msg);
		}
		else if(pageName.equals("showClass")) {		//쿠킹클래스 전부 보기
			pageName="cookingClassSignUpContentList";
			List<Map<String, Object>> list = cookClassDao.showClass(pmap);
			logger.info("CookClassC - showClass"+list);
			g = new Gson();
			forJson = g.toJson(list);
		}
		//new
		else if(pageName.equals("myClassMemList")) {		// 내 쿠킹클래스 전체의 신청 회원 보기
			pmap.put("field","SHOW_APPLY_USERS");
			pmap.put("c_classcd","");
			pmap.put("m_id","");
			List<Map<String, Object>> list = cookClassDao.classForChef(pmap);
			logger.info("CookClassC - myClassMemList"+list);
			mav.addObject("list", list);
		}
		//new
		else if(pageName.equals("myClassMemAccept")) {		//쿠킹클래스 회원 수락
			pmap.put("field","ACCEPT_MYCLASS");
			List<Map<String, Object>> list = cookClassDao.classForChef(pmap);
			logger.info("CookClassC - myClassMemAccept"+list);
			mav.addObject("list", list);
		}
		//new
		else if(pageName.equals("myClassMemDeny")) {		//쿠킹클래스 회원 반려
			pmap.put("field","DENY_MYCLASS");
			List<Map<String, Object>> list = cookClassDao.classForChef(pmap);
			logger.info("CookClassC - myClassMemDeny"+list);
			mav.addObject("list", list);
		}

		
		
		if(g == null) {
			mav.setViewName(pageName+".jsp");
		}else {
			res.setContentType("application/json; charset=utf-8");
			out.print(forJson);
		}
		
		if(pageName.equals("")) {
		}
		else if(pageName.equals("")) {
		}
		else if(pageName.equals("")) {
		}
		
		mav.setViewName(pageName+".jsp");
		
		return mav;
	}
}
