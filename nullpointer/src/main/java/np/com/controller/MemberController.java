package np.com.controller;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import np.mem.model.MemberDao;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberDao memDao;

	Logger logger = LogManager.getLogger(MemberController.class);

	// 로그인
	@RequestMapping("memLogin.np")
	public String memLogin(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info(pMap);
		logger.info("memLogin 호출");
		List<Map<String, Object>> list = memDao.Login(pMap);
		logger.info("다녀옴");
		logger.info("MemberC - nick, id list or msg" + list);
		model.addAttribute("list", list);
		return "forward:result.jsp";
	}

	// 회원가입
	@RequestMapping("memRegi.np")
	public String memRegi(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("memRegi 호출");
		pMap.put("field", "REGISTER");
		String msg = memDao.memRegister(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 회원가입창 내 id중복검사
	@RequestMapping("idCheckRegi.np")
	public String idCheckRegi(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("idCheckRegi 호출");
		pMap.put("field", "ID_CHECK");
		String msg = memDao.memRegister(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 회원가입창 내 닉네임중복검사
	@RequestMapping("nickCheckRegi.np")
	public String nickCheckRegi(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("nickCheckRegi 호출");
		pMap.put("field", "NICK_CHECK");
		String msg = memDao.memRegister(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 회원정보수정
	@RequestMapping("memUpd.np")
	public String memUpd(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("memUpd 호출");
		String msg = memDao.updateMypage(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 회원 탈퇴
	@RequestMapping("withDrawal.np")
	public String withDrawal(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("withDraw 호출");
		String msg = memDao.withDraw(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "redirect:member/IMSI.jsp";
	}

	// 아이디 찾기
	@RequestMapping("idSearch.np")
	public String idSearch(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("idSearch 호출");
		pMap.put("field", "ID_SEARCH");
		pMap.put("m_id", "");
		String msg = memDao.forgotID_PW(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 비밀번호 찾기
	@RequestMapping("pwSearch.np")
	public String pwSearch(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("pwSearch 호출");
		pMap.put("field", "PW_SEARCH");
		String msg = memDao.forgotID_PW(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "forward:member/IMSI.jsp";
	}

	// 회원신고
	@RequestMapping("memReport.np")
	public String memReport(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("memReport 호출");
		String msg = memDao.memReport(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "redirect:member/IMSI.jsp";
	}

	// 인기 게시물 개수
	@RequestMapping("popRecipeNum.np")
	public String popRecipeNum(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("POP_RECIPE_NUM 호출");
		pMap.put("field", "POP_RECIPE_NUM");
		String msg = memDao.chefResume(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "redirect:member/IMSI.jsp";
	}

	// 쉐프 양식서 제출
	@RequestMapping("submitResume.np")
	public String submitResume(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("SUBMIT_RESUME 호출");
		pMap.put("field", "SUBMIT_RESUME");
		String msg = memDao.chefResume(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "redirect:member/IMSI.jsp";
	}

	@RequestMapping("myPageCookclass.np")
	public String chefResume(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("chefResume 호출");
		String msg = memDao.chefResume(pMap);
		logger.info("msg : " + msg);
		model.addAttribute("msg", msg);
		return "redirect:member/IMSI.jsp";
	}

	// 마이페이지 - 회원
	@RequestMapping("myPage.np")
	public String myPage(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("myPage 호출");
		pMap.put("field", "MY_PAGE");
		List<Map<String, Object>> list = memDao.checkMyPage(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

	// 마이페이지 - 쿠킹클래스
	@RequestMapping("myClass.np")
	public String myClass(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("myPage 호출");
		pMap.put("field", "CHECK_COOKCLASS");
		List<Map<String, Object>> list = memDao.checkMyPage(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

	// 검색기능
	@RequestMapping("memSearch.np")
	public String memSearch(Model model, @RequestParam Map<String, Object> pMap) {
		logger.info("memSearch 호출");
		List<Map<String, Object>> list = memDao.memSearch(pMap);
		logger.info("list" + list);
		model.addAttribute("list", list);
		return "forward:member/IMSI.jsp";
	}

}
