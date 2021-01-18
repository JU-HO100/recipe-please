package np.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.google.gson.Gson;

import np.admin.model.AdminMemDao;
import np.com.util.HashMapBinder;
import np.mem.model.MemberDao;

//member/*.np

import org.apache.log4j.Logger;

import np.admin.model.AdminMemDao;
import np.com.util.HashMapBinder;
import np.com.vo.MemberVO;
import np.com.vo.ResumeVO;
import np.mem.model.MemberDao;

public class MemberController implements Action{
	Logger logger = Logger.getLogger(MemberController.class);

	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession(true);
		
		ModelAndView mav = new ModelAndView(req, res);
		
		PrintWriter out = res.getWriter();
		String pageName = (String)req.getAttribute("pageName");//memberList
		MemberDao memDao = MemberDao.getInstance();
		AdminMemDao adMemDao = AdminMemDao.getInstance();
		
		Gson g = null;
	    Map<String,Object> pmap = new HashMap<>();
		HashMapBinder hmb = new HashMapBinder(req);
		hmb.bind(pmap);
		
		String forJson = null;	//json 을 위한 String
		
		logger.info("MemC map>>>>>>"+pmap);
		
	      if(pageName.equals("memLogin")) {//로그인
	          List<Map<String, Object>> list = memDao.Login(pmap);
	          logger.info("MemberC - nick, id list or msg"+list);
	          for(Map<String,Object> map:list) {
	             if(map.get("MSG") == null) {
	                session.setAttribute("id", map.get("M_ID"));
	                session.setAttribute("nick", map.get("M_NICK"));
	                session.setMaxInactiveInterval(300);//세션유지시간 30분
	                pageName="index"; // 로그인 됐을때 보낼 페이지
	             }
	             else {
	            	 logger.info("--------MSG가 존재할때----");
	     			mav.addObject("msg", map.get("MSG"));
	     			logger.info("msg>>>>"+map.get("MSG"));
	            	pageName="login";//로그인 안됐을때 보낼 페이지
	             }
	          }
	       }
		else if(pageName.equals("memRegi")) {//회원가입
			pageName = "index";
			pmap.put("field","REGISTER");//회원가입 필드 설정
			String msg =memDao.memRegister(pmap);
			logger.info("MemberC - memRegiMsg >>>> "+msg);
			mav.addObject("msg", msg);
		}
		else if(pageName.equals("idCheckRegi")) {//회원가입창 ID중복검사
			pageName="idCheckRegiSelect";
			pmap.put("field","ID_CHECK");
			pmap.put("m_pw","");
			pmap.put("m_zip","");
			pmap.put("m_hp","");
			pmap.put("m_name","");
			pmap.put("m_nick","");
			pmap.put("m_gender","");
			pmap.put("m_birth","");
			pmap.put("m_mail","");
			String msg =memDao.memRegister(pmap);
			logger.info("MemberC - idCheckMsg >>>> "+msg);
			mav.addObject("msg", msg);
		}
		else if(pageName.equals("nickCheckRegi")) {//회원가입창 닉네임 중복검사
			pageName="nickCheckRegiSelect";
			pmap.put("field","NICK_CHECK");
			pmap.put("m_id","");
			pmap.put("m_pw","");
			pmap.put("m_zip","");
			pmap.put("m_hp","");
			pmap.put("m_name","");
			pmap.put("m_gender","");
			pmap.put("m_birth","");
			pmap.put("m_mail","");
			String msg =memDao.memRegister(pmap);
			logger.info("MemberC - nickCheckRegiMsg >>>> "+msg);
			mav.addObject("msg", msg);
		}
		//new
		else if(pageName.equals("myPage")) {//마이페이지
			pageName="memberUpdateContentSelect";
			pmap.put("field","MY_PAGE");
			List<Map<String, Object>> list =memDao.myPage(pmap);
			logger.info("MemberC - myPage >>>> "+list);
			mav.addObject("list", list);
		}
		//new(미구현)
		else if(pageName.equals("checkCookClass")) {//나의 쿠킹클래스 확인하기(마이페이지부분)
			pmap.put("field","CHECK_COOKCLASS");
			List<Map<String, Object>> list =memDao.myPage(pmap);
			logger.info("MemberC - checkCookClass >>>> "+list);
			mav.addObject("list", list);
		}
		else if(pageName.equals("memUpd")) {//회원정보수정
			String msg =memDao.updateMypage(pmap);
			logger.info("MemberC - memUpdMsg >>>> "+msg);
			mav.addObject("msg", msg);
		}
		else if(pageName.equals("withDrawal")) {//회원탈퇴
			pageName="index";
			String msg =memDao.withDraw(pmap);
			logger.info("MemberC - nickCheckRegiMsg >>>> "+msg);
			mav.addObject("msg", msg);
		}
		else if(pageName.equals("idSearch")) {//id찾기
			pageName="findIdResultSelect";
			pmap.put("field","ID_SEARCH");
			pmap.put("m_id","");
			logger.info("MemberC - idSearchpmap>>>> "+pmap);
			String msg =memDao.forgotID_PW(pmap);
			logger.info("MemberC - idSearchMsg >>>> "+msg);
			mav.addObject("msg", msg);
		}
		else if(pageName.equals("pwSearch")) {//pw찾기
			pageName="findPwResultSelect";
			pmap.put("field","PW_SEARCH");
			String msg =memDao.forgotID_PW(pmap);
			logger.info("MemberC -  pwSearchMsg >>>> "+msg);
			mav.addObject("msg", msg);
		}
		else if(pageName.equals("memReport")) {//회원 신고
			String msg =memDao.memReport(pmap);
			logger.info("MemberC -  memReport >>>> "+msg);
			mav.addObject("msg", msg);
		}
		//new
		else if(pageName.equals("submitResume")) {//셰프 양식서 제출
			pmap.put("field","SUBMIT_RESUME");
			String msg =memDao.chefResume(pmap);
			logger.info("MemberC -  submitResume >>>> "+msg);
			mav.addObject("msg", msg);
		}
		//new
		else if(pageName.equals("popRecipeNum")) {//내 인기게시물 개수 (3개이상 or 3개미만)
			pmap.put("field","POP_RECIPE_NUM");
			String msg =memDao.chefResume(pmap);
			logger.info("MemberC -  popRecipeNum >>>> "+msg);
			mav.addObject("msg", msg);
		}
		//new
		else if(pageName.equals("chefRanking")) {//셰프들의 랭킹
			pageName="rankingChefContentList";
			pmap.put("field","CHEF_RANKING");
			pmap.put("m_id","");
			List<Map<String, Object>> list =memDao.chefDetail(pmap);
			logger.info("MemberC -  chefRanking >>>> "+list);
			g = new Gson();
			forJson = g.toJson(list);
		}
		//new
		else if(pageName.equals("chefBoard")) {//셰프 클릭했을때 해당 셰프의 게시글 보여줌
			pmap.put("field","CHECK_CHEF");
			List<Map<String, Object>> list =memDao.chefDetail(pmap);
			logger.info("MemberC -  chefBoard >>>> "+list);
			mav.addObject("list", list);
		}
		
		
		//admin 해야함
		
		if(g == null) {
			mav.setViewName(pageName+".jsp");
		}else {
			res.setContentType("application/json; charset=utf-8");
			out.print(forJson);
		}
		ModelAndView mav = new ModelAndView(req, res);
		String pageName = (String)req.getAttribute("pageName");//memberList
		MemberDao memDao = MemberDao.getInstance();
		AdminMemDao adMemDao = AdminMemDao.getInstance();
	    Map<String,Object> pmap = new HashMap<>();
		HashMapBinder hmb = new HashMapBinder(req);
		hmb.bind(pmap);
		MemberVO memberVO = (MemberVO)pmap.get("memberVO");
		ResumeVO resumeVO = (ResumeVO)pmap.get("resumeVO");
		
		if(pageName.equals("login")) {
			memDao.Login(memberVO);
		}
		else if(pageName.equals("register")) {
			memDao.memRegister(memberVO);
		}
		else if(pageName.equals("memberUpdate")) {
			memDao.myPage(memberVO);
		}
		else if(pageName.equals("memberDelete")) {
			memDao.withDraw(memberVO);
		}
		else if(pageName.equals("chefApply")) {					//셰프 신청
			memDao.chefResume(resumeVO);
		}
		
		// admin ----
		else if(pageName.equals("memberList")) {
			adMemDao.memList(memberVO);
		}
		//member/memeberList.sp
		mav.setViewName(pageName+".jsp");
		
		return mav;
	}
}
