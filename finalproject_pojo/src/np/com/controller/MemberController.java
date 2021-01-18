package np.com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import np.admin.model.AdminMemDao;
import np.com.util.HashMapBinder;
import np.com.vo.MemberVO;
import np.com.vo.ResumeVO;
import np.mem.model.MemberDao;

public class MemberController implements Action{
	Logger logger = Logger.getLogger(MemberController.class);

	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
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
<<<<<<< HEAD
		
=======
		//member/memeberList.sp
>>>>>>> f210c8f63c04a3bc0e4001340d38556fcc059b76
		mav.setViewName(pageName+".jsp");
		
		return mav;
	}
}
